class Planet < ApplicationRecord
  belongs_to :region, optional: true
  has_many :moons
  has_many :questions
  has_many :replies, through: :questions
end
