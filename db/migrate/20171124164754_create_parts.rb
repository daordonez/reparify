class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :nombreComun_parte
      t.string :precio_parte
      t.references :order, foreign_key: true
      t.references :deviseModel, foreign_key: true

      t.timestamps
    end
  end
end
