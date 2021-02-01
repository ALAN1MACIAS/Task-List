class CreateUserconfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :userconfigs do |t|
      t.string :nombre
      t.string :apellidop
      t.string :apellidom
      t.text :descripcion

      t.timestamps
    end
  end
end
