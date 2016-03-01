class Fixusers3 < ActiveRecord::Migration
  def change
    rename_column :users, :type, :typeacct
  end
end
