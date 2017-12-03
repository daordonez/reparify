class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :nombre_fabricante
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
