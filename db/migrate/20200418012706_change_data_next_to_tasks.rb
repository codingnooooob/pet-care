class ChangeDataNextToTasks < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :next, :date
  end
end
