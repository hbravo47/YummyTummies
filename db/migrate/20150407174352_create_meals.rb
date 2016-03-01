class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories
      t.boolean :premium
      t.string :pic
      t.integer :mealID

      t.timestamps null: false
    end
  end
end
