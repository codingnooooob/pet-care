class AddColumnToAnimals2 < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :doing, :integer
  end
end
