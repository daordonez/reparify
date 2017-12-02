class Part < ApplicationRecord
  belongs_to :order
  belongs_to :deviseModel
end
