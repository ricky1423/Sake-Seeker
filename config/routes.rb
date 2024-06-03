Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'
  resources :users, only: :show
  resources :items, only: [:index, :show]
  resources :abouts, only: :index
end
