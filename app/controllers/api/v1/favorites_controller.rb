class Api::V1::FavoritesController < ApplicationController

  def index
    favoritedUsers = Favorite.all
    render json: favoritedUsers
  end  

  def create
    favorite = Favorite.create(favorite_params)
    render json: favorite
  end  

  def destroy
    favorite = find_favorite
    if favorite
      favorite.destroy
      # render json: {}
    else
      render json: { error: "favorite not found" }, status: :not_found
    end
  end

  private

  def find_favorite
    Favorite.find(params[:id])
  end

  def favorite_params
    params.permit(:id, :user_id, :favoritedUser_id)
  end  
end
