class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: {case_sensitive: false}
  validates :name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18}

  # has_one_attached :image

  has_many :art_images
  # has_many :files_attachments, through: :art_images, :source =>:images_attachments
  # has_many :images_attachments, through: :art_images, :source => :images_attachments

  # has_many :genres
  # has_many :art_styles
end
