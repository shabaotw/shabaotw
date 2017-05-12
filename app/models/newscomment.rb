class Newscomment < ApplicationRecord
  belongs_to :user
  belongs_to :news2

  validates :content, presence: true
end
