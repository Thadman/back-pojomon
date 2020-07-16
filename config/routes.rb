Rails.application.routes.draw do
  resources :monsters
  post "/login", to: "user_token#create"
end
