class Addp < ActiveRecord::Migration
  def change
    add_column :franchises, :phone, :string
    add_column :schools, :phone, :string
  end
end
