class Book < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20}
  validates :price, presence: true
  validates :publish, presence: true
  validates :publish_date, presence: true
end
