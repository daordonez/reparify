class CreateBuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :builds do |t|
      t.datetime :fecha
      t.references :part, foreign_key: true
      t.string :imei
      t.string :color
      t.string :capacidad
      t.string :estado_estetico
      t.references :devise_model, foreign_key: true

      t.timestamps
    end
  end
end
