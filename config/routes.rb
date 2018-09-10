Rails.application.routes.draw do

  devise_for :users

    devise_scope :user do
      authenticated :user do
      root 'cabins#index', as: :authenticated_root

    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  root 'cabins#index'
  get 'cabins/:id/index', to: 'reservations#index'
  get 'reservations', to: 'reservations#index', as: 'reservations'
  #get 'reservations/:id ', to: 'reservations#show', as: 'reservation'
  get 'cabins/:id/market', to: 'markets#show', as: 'market'
  get 'cabins/:cabin_id/reservations/:id/add_product', to: 'reservation_products#add', as:'reservation_products'
  get 'cabins/:cabin_id/reservations/:id/add_services', to: 'reservation_services#add', as:'reservation_services'
  get 'cabins/:cabin_id/reservations/:id/add_bicycle', to: 'reservation_bicycles#add', as:'reservation_bicycles'

  resources :customers
  resources :cabins do
    resources :products
    resources :services
    resources :bicycles
    resources :reservations, except: :destroy
  end

end
