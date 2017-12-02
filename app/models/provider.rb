class Provider < ApplicationRecord
	def name
		return self.nombre_proveedor
	end
end
