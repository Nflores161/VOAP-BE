class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :bio, :creator, :profile_pic_url, :email

  has_many :art_images
  has_many :genres
  has_many :art_styles
end
