Rails.application.routes.draw do
  
  root to: "welcome#show"
  
  resources :tags
  resources :comments
  resources :trips
  resources :destinations
  resources :users
  resources :posts

  delete '/logout', to: 'welcome#logout', as: 'logout'
  post '/login', to: 'welcome#login', as: 'login'
 
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
