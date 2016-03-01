class Addapprov < ActiveRecord::Migration
  def change
     add_column :registers, :approved, :boolean
  end
end
