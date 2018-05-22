class Region < ApplicationRecord
  has_many :planets
  has_many :questions
end
