Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'
  resources :users, only: :show

  resources :items, only: [:index, :show] do
  collection do
    get 'search'
  end
end

  resources :abouts, only: :index
end
