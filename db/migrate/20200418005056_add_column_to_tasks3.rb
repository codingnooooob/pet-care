class AddColumnToTasks3 < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :next, :string
  end
end
