class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :nombre_proveedor
      t.integer :tiempoServicio_proveedor

      t.timestamps
    end
  end
end
