class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.integer :lavel_importance
      t.string :status
      t.date :end_date
      t.string :color

      t.timestamps
    end
  end
end
