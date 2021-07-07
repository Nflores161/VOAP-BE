class ArtImageSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id
  # :genre, :art_type, :description

# def initialize(art_image: nil, user:)
#   @art_image = art_image
#   @user = user
# end

# def serialize_new_art_image()
#   serialized_new_art_image.to_json()
# end

# private def serialize_art_image(art_image)
#     {
#       id: art_image.id,
#       image_url: art_image.get_image_url(),
#       title: art_image.title,
#       description: art_image.description,
#       user_id: art_image.user.id
#   }
# end  

end
