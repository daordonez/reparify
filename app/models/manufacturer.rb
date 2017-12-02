class Manufacturer < ApplicationRecord
  belongs_to :family
  def name
  	return self.nombre_fabricante
  end
end
