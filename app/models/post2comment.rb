class Post2comment < ApplicationRecord
  belongs_to :user
  belongs_to :post2
end
