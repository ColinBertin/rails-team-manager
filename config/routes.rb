Rails.application.routes.draw do
  devise_for :users
  root to: 'sports#index'
  resources :sports, only: [:index, :show, :new, :create] do
    resources :teams
  end
  # resources :teams, only: [:index, :show, :edit, :update]
end
