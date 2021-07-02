Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      post "/signup", to: "users#create"
      post "/login", to: "users#login"
      get "/users/:id", to: "users#show"
      patch "/users/:id", to: "users#update"
    end 
  
    # Routing logic: fallback requests for React Router.
    # Leave this here to help deploy your app later!
    get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end