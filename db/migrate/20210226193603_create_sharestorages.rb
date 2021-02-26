class CreateSharestorages < ActiveRecord::Migration[6.0]
  def change
    create_table :sharestorages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :taskstorage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
