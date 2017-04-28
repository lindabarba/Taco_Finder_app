Rails.application.routes.draw do
  root 'pages#show', page: 'home'
  get '/pages/:page', to: 'pages#show'
  resources :users, only: [:new, :create, :destroy]
  resources :tacospots, shallow: true

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
