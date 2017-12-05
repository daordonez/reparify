class Build < ApplicationRecord
  has_many :parts
  belongs_to :devise_model
end
