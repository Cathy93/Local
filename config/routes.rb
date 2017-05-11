Rails.application.routes.draw do


  devise_for :users
  resources :products do
      resources :orders, only: [:new, :create]
  end

  get 'page/about'
  get 'page/contact'
  get 'seller', to: "products#seller"
  get 'sales', to: "orders#sales"
  get  'purchases', to: "order#purchases"

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
