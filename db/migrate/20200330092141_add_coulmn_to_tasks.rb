class AddCoulmnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :title, :string
    add_column :tasks, :check, :string
    add_column :tasks, :animal_id, :integer
  end
end
