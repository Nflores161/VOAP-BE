class Api::V1::FavoritesController < ApplicationController

  def index
    favoritedUsers = Favorite.all
    render json: favoritedUsers
  end  

  def create
    favorite = Favorite.create(favorite_params)
    render json: favorite
  end  

  private
  def favorite_params
    params.permit(:id, :user_id, :favoritedUser_id)
  end  
end
