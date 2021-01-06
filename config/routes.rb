Rails.application.routes.draw do
  root "users#index"
  resources :players
  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  get "log_out", to: "sessions#destroy"
end
