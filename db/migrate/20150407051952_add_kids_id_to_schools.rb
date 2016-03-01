class AddKidsIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :kidsId, :integer
  end
end
