class Fixusers1 < ActiveRecord::Migration
  def change
    add_column :users, :pay_type, :string
  end
end
