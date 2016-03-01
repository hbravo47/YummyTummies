class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :name
      t.string :address
      t.string :school
      t.integer :phone
      t.string :kids
      t.integer :kidsId
      t.integer :SSN

      t.timestamps null: false
    end
  end
end
