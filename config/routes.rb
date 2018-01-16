Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"
  get "admin", to: "admins#index"
  get "admin/users", to: "users#index"
  get "vendors", to: "vendors#index"
  get "carriers", to: "carriers#index"
  get "orders", to: "orders#index"
  get "orders/:id", to: "orders#show", as: :order
  delete "orders/:id", to: "orders#destroy"
  resources :admin, :carrier, :vendor
end
