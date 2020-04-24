class AddColumnToTasks2 < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :lock, :integer
  end
end
