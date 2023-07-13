class Pickup < ApplicationRecord
  has_many :locations, as: :locationable
end
