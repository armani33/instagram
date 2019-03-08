Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:show, :new, :create, :destroy]
end
