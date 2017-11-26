class CreateReferencesOKtoManufacturers < ActiveRecord::Migration[5.1]
  def change
    add_reference :manufacturers, :family, index: true, foreign_key: true
  end
end
