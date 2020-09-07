Rails.application.routes.draw do
  resources :tags
  resources :comments
  resources :trips
  resources :destinations
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
