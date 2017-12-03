class Family < ApplicationRecord
	has_many :manufacturers , dependent: :destroy
	def name
		return self.nombre_familia
	end
end
