Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#new"
  get "/admin", to: "admins#index"
  get "/vendor", to: "vendors#index"

  get "/login", to: "sessions#new"
  get "/sessions/dummy", to: "sessions#destroy"


  resources :users do
    resources :locations
    resources :orders
  end
  resources :sessions, only: [:new, :create, :destroy]
end
