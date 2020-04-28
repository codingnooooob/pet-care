class AddColumnToAnimals3 < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :tomorrow, :integer
  end
end
