class Moon < ApplicationRecord
  belongs_to :planet, optional: true
  has_many :questions
end
