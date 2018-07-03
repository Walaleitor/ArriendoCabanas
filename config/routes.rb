Rails.application.routes.draw do

  root 'cabins#index'
  get 'cabins/:id/index', to: 'reservations#index'
  get 'reservations', to: 'reservations#index', as: 'reservations'
  get 'reservations/:id ', to: 'reservations#show', as: 'reservation'
  get 'cabins/:id/market', to: 'markets#show', as: 'market'

  resources :customers
  resources :cabins do
    resources :products
    resources :services
    resources :bicycles
    resources :reservations, except: :destroy
  end

end
