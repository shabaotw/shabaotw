class Race < ApplicationRecord
  belongs_to :user
  has_many :racecomments
end
