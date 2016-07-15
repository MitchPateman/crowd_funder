Rails.application.routes.draw do
  root 'projects#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :projects do
    resources :rewards, only: [:new, :create]
    resources :pledges, only: [:new, :create]
  end
end
