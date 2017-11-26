class DeleteTableManufacturers < ActiveRecord::Migration[5.1]
  def change
  	drop_table :manufacturers
  end
end
