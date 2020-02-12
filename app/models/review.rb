class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  validates :restaurant, :content, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }, presence: true
end
