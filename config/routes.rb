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

  resources :customers
  resources :cabins do
    resources :products
    resources :services
    resources :bicycles
    resources :reservations, except: :destroy
  end

end
