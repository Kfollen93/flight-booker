Rails.application.routes.draw do
  resources :flights, :airports, :bookings
  root 'flights#index'
end
