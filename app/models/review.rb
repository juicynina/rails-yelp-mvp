class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5) },
    numericality: { only_integer: true }
    # message: { '%{value} is not a valid rating'}
end
