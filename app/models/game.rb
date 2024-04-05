# frozen_string_literal: true

class Game < ApplicationRecord
  RATINGS = %w[G PG PG-13 R NC-17].freeze

  before_save :set_slug

  validates :title, :released_on, :play_time, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: 'must be a JPG or PNG image'
  }
  validates :rating, inclusion: { in: RATINGS }

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_many :critics, through: :reviews, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  scope :released, -> { where('released_on < ?', Time.now).order('released_on desc') }
  scope :upcoming, -> { where('released_on > ?', Time.now).order('released_on asc') }
  scope :hits, -> { where('total_gross >= 300000000').order(total_gross: :desc) }
  scope :flops, -> { where('total_gross < 22500000').order(total_gross: :asc) }
  scope :recent, ->(max=5) { released.limit(max) }

  def npc?
    unless (reviews.count > 50 && average_stars >= 4)
      (total_gross.blank? || total_gross < 225_000_000)
    end
  end

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (self.average_stars / 5.0) * 100
  end

  def set_slug
    self.slug = title.parameterize
  end

  def to_param
    slug
  end
end
