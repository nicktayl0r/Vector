Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#new"
  get "admin", to: "admins#index"

  get "/admin/users/new", to: "users#new", as: :new_user
  post "/admin/users", to: "users#create", as: :users
  get "admin/users", to: "users#index"
  get "/admin/users/:id", to: "users#show", as: :user
  get "/admin/users/:id/edit", to: "users#edit", as: :edit_user
  
  get "/orders/new", to: "orders#new", as: :new_order
  post "/orders", to: "orders#create"
  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show", as: :order
  get "/orders/:id/edit", to: "orders#edit", as: :edit_order
  patch "/orders/:id", to: "orders#update"
  delete "/orders/:id", to: "orders#destroy"
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/sessions/dummy', to: 'sessions#destroy'
end
