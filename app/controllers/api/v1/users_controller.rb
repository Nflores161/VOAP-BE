class Api::V1::UsersController < ApplicationController


  def index
    users = User.all
    render json: users
  end

  def show
    user = find_user
    # byebug
    if user
      render json: user, status: 200
    else
      render_response_not_found
    end
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      # render json: user, status: 201
      render json: { user: UserSerializer.new(user), token: encode_token({ user_id: user.id }) }
    else
      render json: { error: "Enter valid email/password again" }
    end
  end  

  def login
    user = User.find_by(email: params[:email])
    # byebug
      if user && user.authenticate(params[:password])
     
      render json: { user: UserSerializer.new(user), token: encode_token({ user_id: user.id }) }
    else
      render json: { error: "Email or Password is not correct" }
    end
  end

  def update
    user = find_user
    user.update(user_params)
    if user.valid?
      render json: user, status: 200
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def destroy
    user = find_user
    if user
      user.destroy
      render json: {}
    else
      render json: { error: "User not found" }, status: :not_found
    end
  end

  def get_random
    user = User.order("RANDOM()").limit(1)
    if user
      render json: user, status: 200
    else
      render json: render_response_not_found
    end
  end  

  def get_random_group
    users = User.order("RANDOM()").limit(8)
    if users
      render json: users, status: 200
    else
      render json: render_response_not_found
    end
  end  

  
  private

    def find_user 
      User.find(params[:id])
    end  

    def find_user_by_email
      User.find(email: params[:email])
    end  

    def user_params
      params.permit(:id, :name, :age, :location, :bio, :creator, :profile_pic_url, :email, :genre,:password)
    end 

    def render_response_not_found
      render json: { error: "user not found" }, status: :not_found
    end
end