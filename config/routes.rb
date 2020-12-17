Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#home"
  get "/usuarios", to: "users#index"
  get "/usuarios/:id", to: "users#show"
  get "/registro", to: "users#create"
  # get "/ingreso", to: "users#login"
end
