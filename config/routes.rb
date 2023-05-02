Rails.application.routes.draw do
  devise_for :users
  root to: 'sports#index'
  resources :sports, only: [:index, :show, :new, :create, :destroy] do
    resources :teams, only: [:new, :create]
  end
  resources :teams, only: [:show] do
    resources :players, only: [:new, :create]
  end
end
