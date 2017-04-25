Rails.application.routes.draw do
  root 'tacospots#index'
  resources :users
  resources :tacospots do
    resources :comments, shallow: true
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
