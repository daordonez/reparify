class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.references :build, foreign_key: true
      t.references :devise_model, foreign_key: true
      t.boolean :estado

      t.timestamps
    end
  end
end
