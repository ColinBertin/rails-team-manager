Rails.application.routes.draw do
  devise_for :users
  root to: 'sports#index'
  resources :sports, only: [:index, :show, :new, :create] do
    resources :teams, only: [:show, :new, :create]
  end
end
