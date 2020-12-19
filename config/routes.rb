Rails.application.routes.draw do
  get 'courses/index'
  get 'courses/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#home"
  
  resources :users
  resources :courses
end
