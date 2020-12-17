Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rentals
  resources :vehicles
  resources :customers
  get 'all_rental_payment_due', to: 'rentals#all_rental_payment_due', as: :all_rental_payment_due
  get 'search_customer', to: 'customers#search_customer'
  get 'search_vehicle', to: 'vehicles#search_vehicle'
end
