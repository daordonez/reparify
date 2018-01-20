class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :nombre
      t.string :razonsocial
      t.string :cif
      t.string :direccion
      t.string :cp
      t.string :telefono
      t.string :logo

      t.timestamps
    end
  end
end
