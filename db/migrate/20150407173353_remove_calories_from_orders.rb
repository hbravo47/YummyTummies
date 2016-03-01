class RemoveCaloriesFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :calories, :integer
  end
end
