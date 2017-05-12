class Post2 < ApplicationRecord
  belongs_to :user
  has_many :post2comments
end
