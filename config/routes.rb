Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars
  resources :owners
  resources :dealerships

  root "cars#index"

  get "cars/new", to: 'cars#new'

  get "owners", to: 'owners#index'

  get "owners/new", to: 'owners#new'

  get "dealerships", to: 'dealerships#index'

  get "dealerships/new", to: 'dealerships#new'

end
