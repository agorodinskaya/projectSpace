class Moon < ApplicationRecord
  belongs_to :planets, optional: true
end
