class AddTaskstorageIdToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :taskstorage, null: false, foreign_key: true
  end
end
