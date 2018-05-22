class Demonstration < ApplicationRecord
  has_many :planets, through: :questions
  belongs_to :user
end
