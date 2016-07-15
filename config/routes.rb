Rails.application.routes.draw do
  root 'projects#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :rewards
  resources :projects do
    resources :pledges, only: [:new, :create]
  end
end
