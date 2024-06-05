Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'
  resources :users, only: :show do
    member do
    get :likes
    end
  end

  resources :items, only: [:index, :show] do
  collection do
    get 'search'
  end
  resource :likes, only: [:create, :destroy]
  end

  resources :abouts, only: :index
end
