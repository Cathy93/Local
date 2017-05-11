Rails.application.routes.draw do
  devise_for :users
  resources :products
  get 'page/about'

  get 'page/contact'

  get 'seller', to: "products#seller"

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
