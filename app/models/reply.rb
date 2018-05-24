class Reply < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :title, :body, :presence => true
  validates :title, :length => { :minimum => 2 }

end
