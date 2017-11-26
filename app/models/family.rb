class Family < ApplicationRecord
	has_many :manufacturers , dependent: :destroy
end
