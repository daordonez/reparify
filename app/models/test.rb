class Test < ApplicationRecord
  belongs_to :build
  belongs_to :devise_model
  has_and_belongs_to_many :mintests

  #validaciones antes de poder escribir en la BD
  validates :devise_model, presence: true
  validates :build, presence: true
  validates :estado , acceptance: true
end
