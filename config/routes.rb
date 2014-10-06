Rails.application.routes.draw do

  resources :items

	# resources :order_items

	resources :orders

  resources :categories

  get 'cart',             to: 'carts#show',           as: 'cart'
  get 'add_item',         to: 'carts#add_item',       as: 'add_item'
  get 'remove_item',      to: 'carts#remove_item',    as: 'remove_item'
  put 'update_quantity',  to: 'carts#update_quantity',as: 'update_quantity'

  namespace :admin do
    resources :items, :categories

    get 'dashboard', to: 'dashboard#show'
  end

  resources :users

  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'home#index'
  resources :home
  get 'contact_us', to: 'contact_us#show'
  get 'gift_cards', to: 'gift_cards#show'
  get 'about',      to: 'about#show'
  get '/:slug', to: 'pages#show'

end
