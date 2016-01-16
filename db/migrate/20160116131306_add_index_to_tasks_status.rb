class AddIndexToTasksStatus < ActiveRecord::Migration
  def change
    add_index :tasks, :status
  end
end
