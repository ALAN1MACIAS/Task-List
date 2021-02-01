class AddUserIdToUserconfig < ActiveRecord::Migration[6.0]
  def change
    add_reference :userconfigs, :user, foreign_key: true
  end
end
