class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :favoritedUser_id

  belongs_to :user
end
