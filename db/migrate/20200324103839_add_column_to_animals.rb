class AddColumnToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :user_id, :string
  end
end
