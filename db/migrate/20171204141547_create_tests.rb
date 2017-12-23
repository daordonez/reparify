class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.datetime :fecha
      t.references :devise_model, foreign_key: true
      t.references :part, foreign_key: true
      t.string :estado

      t.timestamps
    end
  end
end
