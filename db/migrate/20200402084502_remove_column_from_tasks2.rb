class RemoveColumnFromTasks2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :check, :string
  end
end
