Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :sessions, only: :index
  get "/auth/:provider/callback" => 'sessions#create'
  get "logout" => 'sessions#destroy'
end
