class AddInvoiceToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :invoice, foreign_key: true
  end
end
