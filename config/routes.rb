Rails.application.routes.draw do
  root 'projects#index'
  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :rewards
  
  resources :projects do
    resources :pledges
  end
end