Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'customers#new', as: :admin_root
  resources :rentals
  resources :vehicles
  resources :customers do
    resources :rentals
  end
  get 'all_rental_payment_due', to: 'rentals#all_rental_payment_due', as: :all_rental_payment_due
  get 'search_customer', to: 'customers#search_customer'
  get 'search_vehicle', to: 'vehicles#search_vehicle'
end
