class AddMealIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :mealID, :integer
  end
end
