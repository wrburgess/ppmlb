namespace :app do
  desc "Rebuild db with drop, create, migrate (dev and staging only)"
  task rebuild: :environment do
    input = ''
    STDOUT.puts "Drop, recreate, and migrate app database? y[es] or n[o]"
    input = STDIN.gets.chomp
    if input == "y" && (Rails.env.development? || Rails.env.staging?)
      Rake::Task["db:drop"].execute
      Rake::Task["db:create"].execute
      Rake::Task["db:migrate"].execute
    else
      puts "Aborting app:rebuild tasks"
    end
  end

  desc "Load External CSV"
  task load_external_csv: :environment do
    puts "BEGIN: Adding External Data"

    csv_text = open(AppSettings.external_url)
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      player = Player.create(
        name: row["name"],
        team: row["team"],
        timeline: row["timeline"],
        ab: row["ab"],
        runs: row["runs"],
        hits: row["hits"],
        sing: row["singles"],
        dbls: row["doubles"],
        trip: row["triples"],
        hr: row["hr"],
        rbi: row["rbi"],
        bb: row["bb"],
        ko: row["ko"],
        sb: row["sb"],
        cs: row["cs"],
        ba: row["ba"],
        obp: row["obp"],
        slg: row["slg"],
        ops: row["ops"],
        cbs_rank: row["cbs_rank"]
      )
      puts "imported #{player.name} for timeline #{player.timeline}"
    end
    puts "END:   Adding External Data"
  end
end
