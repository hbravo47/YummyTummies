class AddfidTouser < ActiveRecord::Migration
  def change
    add_column :users, :fid, :integer
    add_column :meals, :fid, :integer
  end
end
