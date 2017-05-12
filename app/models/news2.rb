class News2 < ApplicationRecord
  belongs_to :user
  has_many :newscomments
end
