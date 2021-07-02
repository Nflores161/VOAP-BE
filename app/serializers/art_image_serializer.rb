class ArtImageSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :genre, :art_type, :description
end
