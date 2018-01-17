class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :nombre_apellido1
      t.string :nombre_apellido2
      t.string :nombre_primero
      t.string :dni
      t.string :direccion_completa
      t.integer :cp
      t.string :ppoblacion
      t.string :formapago_hab

      t.timestamps
    end
  end
end
