class Fixkids < ActiveRecord::Migration
  def change
    rename_column :kid, :SSN, :user_id
    remove_column :kid, :kids
  end
end
