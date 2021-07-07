class Api::V1::ArtImagesController < ApplicationController

  def create
    ActiveStorage::Current.host = request.base_url
    user = get_current_user()
    params[:user_id] = user.id
    
    art_image = ArtImage.create(art_image_params)
    if art_image
      # .valid?
      # art_image.save
    byebug  
    art_image.image.attach(params[:image])
    render json: {art_image: art_image}
      # render json: {art_image: ArtImageSerializer.new(art_image: art_image, user_id: user.id)}
    else
      render json: { errors: art_images.errors.full_messages }, status: 400
    end  
  end

  private 
  def art_image_params
    params.permit(:id, :title, :user_id)
  end

  # def respond_to_art_image
  #   if art_image.valid?
  #     art_image_serializer = ArtImageSerializer.new(art_image: art_image, user: user)
  #     render json: art_image_serializer.seralize_new_art_image()
  #   else
  #     render json: { errors: art_images.errors }, status: 400
  #   end  
  # end  

end 
