# frozen_string_literal: true

class Review < ApplicationRecord
  STARS = [1, 2, 3, 4, 5].freeze
  belongs_to :game
  belongs_to :user
  validates :comment, length: { minimum: 4 }
  validates :stars, inclusion: {
    in: STARS,
    message: 'must be between 1 and 5'
  }

  def stars_as_percent
    (stars.to_f / 5) * 100
  end
end
