class Build < ApplicationRecord
  has_many :parts
  belongs_to :devise_model

  #Validación de campos
  validates :imei, presence: true
  validates :NumeroSerie, presence: true
  validates :imei , length: {in: 14..15}
  validates :imei, numericality: {only_integer: true}
  validates :imei, uniqueness: true

  # def disp_imei
  # 	"#{build.nombrecomercial_modelo} - #{build.imei}"
  # end
end
