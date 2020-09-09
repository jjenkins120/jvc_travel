Rails.application.routes.draw do
  
  root to: "welcome#show"
  
  resources :tags
  resources :comments
  resources :trips
  resources :destinations
  resources :users
  resources :posts

  delete 'sessions/logout', to: 'sessions#logout', as: 'logout'
  post 'sessions/login', to: 'sessions#login', as: 'login'
  get 'sessions/new', to: 'sessions#new', as: 'new_login'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
