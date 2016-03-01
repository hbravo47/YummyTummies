class AddFranchIdToFranchises < ActiveRecord::Migration
  def change
    add_column :franchises, :franchID, :integer
  end
end
