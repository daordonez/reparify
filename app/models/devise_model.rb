class DeviseModel < ApplicationRecord
  belongs_to :manufacturer
  has_many :parts, dependent: :destroy

  accepts_nested_attributes_for :parts
  def name
  	return self.nombrecomercial_modelo
  end
end
