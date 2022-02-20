Rails.application.routes.draw do
  root to: 'sports#index'
  resources :sports, only: [:index, :show] do
    resources :team, only: [:new, :create, :edit, :update]
  end
  resources :team, only: [:index, :show]
end
