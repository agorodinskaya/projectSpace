class User < ApplicationRecord
  has_secure_password
  enum user_type: [:student, :specialist, :coder, :designer]
  has_many :questions
end
