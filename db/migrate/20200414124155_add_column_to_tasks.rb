class AddColumnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :date, :date
    add_column :tasks, :interval, :integer
    add_column :tasks, :active, :integer
  end
end
