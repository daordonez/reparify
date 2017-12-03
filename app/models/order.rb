class Order < ApplicationRecord
  belongs_to :provider
  has_many :parts , :dependent => :destroy

  accepts_nested_attributes_for :parts

  def name
  	fp = self.fecha_pedido.to_s
  	imp = self.valorPedido
  	str = ""

  	str << fp <<" : "<< imp	<<"€"
  	return str
  end
end
