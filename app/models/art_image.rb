class ArtImage < ApplicationRecord

  include Rails.application.routes.url_helpers

  # has_one_attached :image

  has_one_attached :image
  belongs_to :user

  # has_many :genres
  # has_many :art_types

  # validates :image, {
  #   presence: true
  # }

  # def get_image_url
  #   url_for(self.image)
  # end  
  
end
