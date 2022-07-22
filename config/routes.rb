Rails.application.routes.draw do
  get 'bookings/new'
  get 'flights/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :flights, only: %i[index]
  root "flights#index"
end
