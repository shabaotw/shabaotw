class Buy < ApplicationRecord
  has_many :buycomments
  belongs_to :user

  validates :status, :time, :phone, :location, :category, :weight,
            :price, presence: true

  validates :location, length: { maximum: 6 }
  validates :phone, length: { is: 10 }
end
