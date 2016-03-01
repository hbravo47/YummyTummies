class Fixdbs < ActiveRecord::Migration
  def change
     remove_column :orders, :date
    add_column :orders, :day, :date
   
  end
end
