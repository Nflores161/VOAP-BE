Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :users
      resources :art_images
      resources :favorites
      post "/signup", to: "users#create"
      post "/login", to: "users#login"
      get "/users", to: "users#index"
      get "/users/:id", to: "users#show"
      patch "/users/:id", to: "users#update"
      get "/get_random", to: "users#get_random"
      get "/get_random_group", to: "users#get_random_group"
      # get "/explore", to: "users#index"
      # get "/explore", to: "users#show"
      delete "/favorites/:id", to: "favorites#destroy"

      post "/myprofile", to: "art_images#create"
      get "/myprofile", to: "art_images#show"
      get "/user_art", to: "art_images#index"

      post "/favorite_user", to: "favorites#create"
      get "/myprofile", to: "favorites#index"
      get "/getfavorites", to: "favorites#show"
    end 
  end  
  
    # Routing logic: fallback requests for React Router.
    # Leave this here to help deploy your app later!
    get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
