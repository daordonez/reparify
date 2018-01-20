class AddColumnToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :active, :boolean
  end
end
