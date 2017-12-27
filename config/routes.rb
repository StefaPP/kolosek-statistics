Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users


  get '/profiles/:id', to: 'profiles#show', as: 'profile'
  post '/github_login', to: 'github#create', as: 'github_login'
  post '/repos', to: 'github#repositories', as: 'repos'
end
