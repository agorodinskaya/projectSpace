class Reply < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :planets, through: :questions
end
