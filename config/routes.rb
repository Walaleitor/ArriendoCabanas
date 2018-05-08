Rails.application.routes.draw do

  root 'cabins#index'

  resources :customers, :cabins

  get 'cabins/:id/index', to: 'reservations#index'
  get ':id/new', to: 'reservations#new', as: 'new_reservation'
  post ':id/new', to: 'reservations#create'
  get 'reservations', to: 'reservations#index', as: 'reservations'
  get 'reservations/:id ', to: 'reservations#show', as: 'reservation'

end
