class RemoveColumnFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :check, :string
  end

  def change
    add_column :tasks, :status, :integer
  end
end
