class CreateTaskstorages < ActiveRecord::Migration[6.0]
  def change
    create_table :taskstorages do |t|
      t.string :title
      t.text :body
      t.string :sub_title

      t.timestamps
    end
  end
end
