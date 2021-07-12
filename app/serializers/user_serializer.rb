class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :bio, :creator, :profile_pic_url, :email, :genre

  has_many :art_images
  # has_many :files_attachments, through: :art_images
  
  # , :source =>:images_attachments

  
  # has_many :genres
  # has_many :art_styles
end
