class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :fecha_pedido
      t.string :valorPedido
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
