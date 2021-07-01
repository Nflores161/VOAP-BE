class ArtImage < ApplicationRecord
  has_many :genres
  has_many :art_types

  belongs_to :user
end
