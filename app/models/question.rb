class Question < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :planet, optional: true
  belongs_to :moon, optional: true
  belongs_to :region, optional: true
end
