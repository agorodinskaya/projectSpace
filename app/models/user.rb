class User < ApplicationRecord
  has_secure_password
  enum user_type: [:student, :specialist, :coder, :designer]
  validates :email, presence: true, uniqueness: true
  has_many :questions
  
  def has_voted_for_question?( id )
    self.votes.pluck(:question_id).include? id
  end

end
