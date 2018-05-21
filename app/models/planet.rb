class Planet < ApplicationRecord
  belongs_to :regions, optional: true
  has_many :moons
end
