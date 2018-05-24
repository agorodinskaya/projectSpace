class Moon < ApplicationRecord
  belongs_to :planet, optional: true
  has_many :questions
  has_many :replies, through: :questions
  validates :planet_id, :presence => true
end
