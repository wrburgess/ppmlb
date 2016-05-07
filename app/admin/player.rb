ActiveAdmin.register Player do
  menu parent: "Players", priority: 100

  actions :all

  # permit_params :name, :time_zone, :archived, :test, :dummy

  # scope :actives, default: true
  # scope :archives
  # scope :tests
  # scope :dummies

  # config.sort_order = "lower(name) asc"

  filter :name

  index do
    column :name
    column :team
    column :timeline
    column :ab
    column :runs
    column :hits
    column :singles
    column :doubles
    column :triples
    column :hr
    column :rbi
    column :bb
    column :ko
    column :sb
    column :cs
    column :ba
    column :obp
    column :slg
    column :ops
    column :cbs_rank
    actions
  end

  # show do
  #   attributes_table do
  #     row :id
  #     row :name
  #     row :time_zone
  #     row :archived
  #     row :test
  #     row :dummy
  #     row :created_at
  #     row :updated_at
  #   end
  # end
end
