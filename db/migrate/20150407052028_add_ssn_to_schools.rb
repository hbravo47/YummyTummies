class AddSsnToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :SSN, :integer
  end
end
