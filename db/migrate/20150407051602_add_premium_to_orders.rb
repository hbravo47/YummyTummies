class AddPremiumToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :premium, :boolean
  end
end
