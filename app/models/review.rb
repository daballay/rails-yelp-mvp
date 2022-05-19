class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: :true # o lenght: {minimum: 5}
end
