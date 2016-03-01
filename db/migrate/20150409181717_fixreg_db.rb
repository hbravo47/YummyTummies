class FixregDb < ActiveRecord::Migration
  def change
    rename_table :registers, :kid
    
  end
end
