class User < ApplicationRecord
  has_secure_password
  enum user_type: [:student, :specialist, :coder, :designer]
  validates :email, presence: true, uniqueness: true
  has_many :questions
  has_many :votes
end
