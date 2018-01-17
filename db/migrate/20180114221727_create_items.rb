class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :nombre_art
      t.string :descripcion_art
      t.string :baseimponible_prec
      t.string :ivaimponible_prec
      t.string :total_prec

      t.timestamps
    end
  end
end
