class Delivery < ApplicationRecord
  has_many :locations, as: :locationable
end
