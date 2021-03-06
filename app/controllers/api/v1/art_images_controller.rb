class Api::V1::ArtImagesController < ApplicationController

  def create
    # byebug
    # user = get_current_user()
    # params[:user_id] = user.id
    art_image = ArtImage.create(art_image_params)
    # if art_image
      # .valid?
      # art_image.save
    
    # art_image.image.attach(params[:image])
    # render json: {art_image: art_image}
      # render json: {art_image: ArtImageSerializer.new(art_image: art_image, user_id: user.id)}
    # else
    #   render json: { errors: art_images.errors.full_messages }, status: 400
    # end  
  end

  # def user_art
  #   art_images = ArtImage.find_by(params[:user_id])
  #   art_images.all.with_attached_image
  #   render json: art_images.map { |image|
  #  image.as_json.merge({ image: url_for(image.image) })
  # }
  # end  


  def index
    # byebug
  art_image = ArtImage.all.with_attached_image
    render json: art_image.map { |image|
   image.as_json.merge({ image: url_for(image.image) })
  }
  end

  private 
  def art_image_params
    params.permit(:id, :title, :user_id, :image)
  end

  def find_art_images
    ArtImage.find(params[:user_id])
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
