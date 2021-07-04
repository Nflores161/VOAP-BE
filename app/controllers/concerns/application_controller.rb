  class ApplicationController < ActionController::API
    # include ActionController::Cookies
    before_action :logged_in?
  
    def encode_token(payload)
      JWT.encode(payload, "VOAPP", "HS256")
    end
  
    def logged_in?
      # byebug
      headers = request.headers["Authorization"]
      token = headers.split(" ")[1]
  
      begin
        user_id = JWT.decode(token, "VOAPP")[0]["user_id"]
        user = User.find(user_id)
      rescue
        user = nil
      end
  
      # if user
      # else
      unless user
        render json: { error: "Please login!!" }
      end
    end
  end
end
