class Fixusers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :premium, :boolean
    add_column :users, :type,  :integer
  end
end
