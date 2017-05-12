class Sell < ApplicationRecord
  belongs_to :user
  has_many :sellcomments

  validates :status, :phone, :location, :category, :weight, :price, presence: true
  validates :location, length: { maximum: 5 }
  validates :phone, length: { is: 10 }


end
