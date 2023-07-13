class Location < ApplicationRecord
  belongs_to :locationable, polymorphic: true
  belongs_to :route
end
