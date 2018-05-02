class Book < ApplicationRecord
  has_many :reviews
  validates :name, presence: true, length: { maximum: 200}
  validates :price, presence: true
  validates :publish, presence: true
  validates :publish_date, presence: true
end
