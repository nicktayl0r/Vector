Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"
  get "admin", to: "admins#index"
  get "vendors", to: "vendors#index"
  get "carriers", to: "carriers#index"
  resources :admin, :carrier, :vendor
end
