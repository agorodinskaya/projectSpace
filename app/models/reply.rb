class Reply < ApplicationRecord
  has_many :planets, through: :questions
  has_many :users, through: :questions
end
