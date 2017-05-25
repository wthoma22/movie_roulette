Rails.application.routes.draw do

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :movies, only: [:show] do
    resources :comments, only: [:create]
  end

  resources :movies
end
