Rails.application.routes.draw do
  resources :monsters do 
    collection do
      get :current
    end
  end
  get "/status", to: "status#index"
  get "/status/user", to: "status#user"
  post "/login", to: "user_token#create"
  post "/sign-up", to: "users#create"
end
