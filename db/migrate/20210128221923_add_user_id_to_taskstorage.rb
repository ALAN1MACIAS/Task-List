class AddUserIdToTaskstorage < ActiveRecord::Migration[6.0]
  def change
    add_reference :taskstorages, :user, foreign_key: true
  end
end
