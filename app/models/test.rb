class Test < ApplicationRecord
  belongs_to :devise_model
  has_and_belongs_to_many :parts
end
