class Genre < ApplicationRecord

  before_save :set_slug

  validates :name, presence: true, uniqueness: true
  has_many :characterizations, dependent: :destroy
  has_many :games, through: :characterizations

  def set_slug
    self.slug = name.parameterize
  end

  def to_param
    slug
  end
end
