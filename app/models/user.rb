class User < ApplicationRecord
  has_many :art_images
  has_many :genres
  has_many :art_styles
end
