class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.references :customer, foreign_key: true
      t.references :item, foreign_key: true
      t.string :baseimponible_prec
      t.string :ivaimponilbe_prec
      t.string :importetotal_prec

      t.timestamps
    end
  end
end
