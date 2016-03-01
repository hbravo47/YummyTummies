class Fixkidsagin < ActiveRecord::Migration
  def change
    rename_table :kid, :registers
  end
end
