class Sellcomment < ApplicationRecord
  belongs_to :user
  belongs_to :sell

  validates :content, presence: true
end
