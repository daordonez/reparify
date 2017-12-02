class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :nombre_parte
      t.integer :cantidad_stock
      t.string :precio
      t.references :devise_model, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
