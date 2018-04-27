Rails.application.routes.draw do

  root 'cabins#index'

  resources :customers, :cabins do
    resource :reservations
  end

  get 'cabins/:id/index', to: 'reservations#index'

end
