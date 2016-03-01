class AddOrderIdToFranchises < ActiveRecord::Migration
  def change
    add_column :franchises, :orderID, :integer
  end
end
