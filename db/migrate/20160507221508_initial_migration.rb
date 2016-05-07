class InitialMigration < ActiveRecord::Migration
  def change
    create_table :hitters, force: true do |t|
      t.string     :name
      t.string     :team
      t.string     :timeline
      t.decimal    :ab, default: 0
      t.decimal    :runs, default: 0
      t.decimal    :hits, default: 0
      t.decimal    :sing, default: 0
      t.decimal    :dbls, default: 0
      t.decimal    :trip, default: 0
      t.decimal    :hr, default: 0
      t.decimal    :rbi, default: 0
      t.decimal    :ko, default: 0
      t.decimal    :sb, default: 0
      t.decimal    :cs, default: 0
      t.decimal    :ba, default: 0
      t.decimal    :obp, default: 0
      t.decimal    :slg, default: 0
      t.decimal    :ops, default: 0
      t.decimal    :cbs_rank, default: 0
      t.integer    :obp_rank, default: 0
      t.integer    :runs_rank, default: 0
      t.integer    :hr_rank, default: 0
      t.integer    :rbi_rank, default: 0
      t.integer    :sb_rank, default: 0
      t.integer    :calc_rank, default: 0
      t.timestamps null: false
    end
  end
end
