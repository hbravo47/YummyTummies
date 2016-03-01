class Request < ActiveRecord::Migration
  def change
     add_column :franchises, :name, :string
    add_column :franchises, :email, :string
    add_column :franchises, :address, :string
    add_column :franchises, :descrption, :text
    add_column :franchises, :approved, :boolean
    add_column :schools, :name, :string
    add_column :schools, :email, :string
    add_column :schools, :address, :string
    add_column :schools, :descrption, :text
    add_column :schools, :approved, :boolean
  end
end
