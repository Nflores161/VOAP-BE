class ArtType < ApplicationRecord
  has_many :users
  has_many :art_images
end
