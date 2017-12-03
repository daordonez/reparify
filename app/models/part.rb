class Part < ApplicationRecord
  belongs_to :devise_model
  belongs_to :order

  accepts_nested_attributes_for :devise_model
  def name
  	return self.nombre_parte
  end
end
