Rails.application.routes.draw do

 resources :cabins


=begin
  #Rutas Cliente

  get 'customer/index'
  get 'customer/show'
  get 'customer/new'
  get 'customer/create'
  get 'customer/edit'
  get 'customer/update'
  get 'customer/destroy'

  #Rutas Reserva

  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/edit'
  get 'reservations/update'
  get 'reservations/destroy'

  #Rutas Cabañas

  get 'cabins/index' , to: 'cabins#index'
  get 'cabins/new', to: 'cabins#new'
  get 'cabins/:id', to: 'cabins#show'
  post 'cabins/index', to: 'cabins#create'
  get 'cabins/edit'
  put 'cabins/update'
  patch 'cabins/update'
  delete 'cabins/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

=end
end
