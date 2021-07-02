class ArtTypeSerializer < ActiveModel::Serializer
  attributes :id, :contemporary, :modern, :abstract, :cubism, :post_modern, :punk_style, :extreme, :sketchy, :geometric, :photography, :pop_art, :surrealism, :impressionism, :collage, :freestyle, :symbolism, :expressionism

  has_many :users
  has_many :art_images
end
