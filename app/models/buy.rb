class Buy < ApplicationRecord
  has_many :buycomments
  belongs_to :user

  validates :status, :date, :phone, :location, :category, :weight,
            :price, presence: true

  validates :location, length: { maximum: 5 }
  validates :phone, length: { is: 10 }
end
