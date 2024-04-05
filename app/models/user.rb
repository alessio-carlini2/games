class User < ApplicationRecord
  has_secure_password

  before_save :format_username, :set_slug

  validates :name, presence: true
  validates :email, format: { with: /\S+@\S+/ }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 10, allow_blank: true }
  validates :username, presence: true,
                    format: { with: /\A[A-Z0-9]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_games, through: :favorites, source: :game

  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

  def format_username
    self.username = username.downcase
  end

  def set_slug
    self.slug = username.parameterize
  end

  def to_param
    slug
  end
end
