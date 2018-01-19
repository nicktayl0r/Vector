Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#new"
  get "/admin", to: "admins#index", as: :admin
  get "/vendor", to: "vendors#index", as: :vendor
  get "/carrier", to: "carriers#index", as: :carrier
  get "/login", to: "sessions#new"
  get "/sessions/dummy", to: "sessions#destroy"

  resources :users do
    resources :locations, :orders
  end
  
  resources :sessions, only: [:new, :create, :destroy]
end
