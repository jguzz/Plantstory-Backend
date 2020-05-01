Rails.application.routes.draw do
  resources :photos
  resources :posts
  resources :comments
  resources :plants
  resources :follows
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
