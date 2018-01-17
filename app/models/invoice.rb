class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :items, inverse_of: :invoice

  # Acepta atributos anidades de los items que contiene la factura
  accepts_nested_attributes_for :items 
end
