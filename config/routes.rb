Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :tacospots
  resources :comments
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
