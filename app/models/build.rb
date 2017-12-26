class Build < ApplicationRecord
  has_many :parts
  belongs_to :devise_model

  #Validación de campos
  validates :imei, presence: true
  validates :NumeroSerie, presence: true
end
