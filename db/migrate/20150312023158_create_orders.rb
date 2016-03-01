class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :Mealname
      t.integer :calories
      t.string :date
      t.decimal :price
      t.integer :kidsID
      t.integer :orderID

      t.timestamps null: false
    end
  end
end
