Rails.application.routes.draw do

  get 'markets/index'

  get 'markets/show'

  root 'cabins#index'

  resources :customers, :cabins

  get 'cabins/:id/index', to: 'reservations#index'
  get ':id/new', to: 'reservations#new', as: 'new_reservation'
  post ':id/new', to: 'reservations#create'
  get 'reservations', to: 'reservations#index', as: 'reservations'
  get 'reservations/:id ', to: 'reservations#show', as: 'reservation'
  get 'cabins/:id/show', to: 'markets#show', as: 'market'


  #get 'cabins/:id/products/new', to: 'products#new', as: 'new_product'
  #post 'cabins/:id/products/new', to: 'products#create'
  #get 'cabins/:id/products/:product_id/edit', to: 'products#edit', as: 'edit_product'
  #put 'cabins/:id/products/:product_id/edit', to: 'products#update'
  #patch 'cabins/:id/products/:product_id/edit', to: 'products#update'
  #
  resources :cabins do
    resources :products
    resources :services
    resources :bicycles
  end

  get 'cabins/:id/services/new', to: 'services#new', as: 'new_service'
  post 'cabins/:id/services/new', to: 'services#create'

  get 'cabins/:id/bicycles/new', to: 'bicycles#new', as: 'new_bicycle'
  post 'cabins/:id/bicycles/new', to: 'bicycles#create'

end
