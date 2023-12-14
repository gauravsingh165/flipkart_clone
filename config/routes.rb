Rails.application.routes.draw do
  get 'cart/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :products
  post  "checkout/creat", to: "checkout#create"
  match '/add_to_cart/:product_id', to: 'carts#add_to_cart', as: 'add_to_cart', via: [:get, :post]
  get '/cart', to: 'carts#show', as: 'cart'
  match '/remove_from_cart/:product_id', to: 'carts#remove_from_cart', as: 'remove_from_cart', via: [:delete, :get]
  root "products#index"
end
