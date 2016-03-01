class AddKnameToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :Kname, :string
  end
end
