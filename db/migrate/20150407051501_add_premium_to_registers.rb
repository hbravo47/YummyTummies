class AddPremiumToRegisters < ActiveRecord::Migration
  def change
    add_column :registers, :premium, :boolean
  end
end
