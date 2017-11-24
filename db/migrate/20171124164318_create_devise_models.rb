class CreateDeviseModels < ActiveRecord::Migration[5.1]
  def change
    create_table :devise_models do |t|
      t.string :nombrecomercial_modelo
      t.references :manufacturer, foreign_key: true

      t.timestamps
    end
  end
end
