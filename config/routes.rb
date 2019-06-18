Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :orders
  resources :users
  resources :addresses
  resources :shopping_carts
  resources :products do
    resources :shopping_carts, only: [:create]
  end 
	get 'handsets' => 'products#handsets'
	get 'prepay' => 'products#prepay'
	get 'subscription' => 'products#subscription'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
