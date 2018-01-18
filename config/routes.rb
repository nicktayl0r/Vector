Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#new"
  get "admin", to: "admins#index"
  get "admin/users", to: "users#index", as: :users
  get "/admin/users/new", to: "users#new", as: :new_user
  get "/admin/users/:id", to: "users#show", as: :user
  post "/admin/users", to: "users#create"
  get "/admin/users/:id/edit", to: "users#edit", as: :edit_user
  patch "/admin/users/:id", to: "users#update"
  delete "/admin/users/:id", to: "users#destroy", as: :destroy_user

  get "/login", to: "sessions#new"
  get "/sessions/dummy", to: "sessions#destroy"

  get "vendor", to: "vendors#index"

  get "vendor/locations", to: "locations#index", as: :locations
  get "vendor/locations/new", to: "locations#new", as: :new_location
  get "vendor/locations/:id", to: "locations#show", as: :location
  post "vendor/locations", to: "locations#create"
  get "vendor/locations/:id/edit", to: "locations#edit", as: :edit_location
  patch "vendor/locations/:id", to: "locations#update"
  delete "vendor/locations/:id", to: "locations#destroy"
  
  get  "vendor/orders", to: "orders#index", as: :orders
  get "vendor/orders/new", to: "orders#new", as: :new_order
  get "vendor/orders/:id", to: "orders#show", as: :order
  post "vendor/orders", to: "orders#create"
  get "vendor/orders/:id/edit", to: "orders#edit", as: :edit_order
  patch "vendor/orders", to: "orders#update"
  delete "vendor/orders/:id", to: "orders#destroy"


  
  
  resources :sessions, only: [:new, :create, :destroy]

end
