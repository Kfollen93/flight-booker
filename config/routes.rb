Rails.application.routes.draw do
  resources :flights, :airports, :bookings, :passengers
  root 'flights#index'
end
