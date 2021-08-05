Rails.application.routes.draw do
  resources :users
  # get 'pages/home'
  # get 'pages/about'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: %i[show index new create edit update destroy]
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
