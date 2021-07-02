class ForumSerializer < ActiveModel::Serializer
  attributes :id, :post, :user_id

  has_many :users
end
