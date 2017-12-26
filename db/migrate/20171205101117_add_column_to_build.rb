class AddColumnToBuild < ActiveRecord::Migration[5.1]
  def change
    add_column :builds, :NumeroSerie, :string
  end
end
