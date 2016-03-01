class Fixcolname < ActiveRecord::Migration
  def change
    rename_column :orders, :orderID, :user_id
  end
end
