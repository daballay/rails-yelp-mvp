class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: :true
end
