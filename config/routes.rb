Rails.application.routes.draw do
  resources :flights, :airports
  root 'flights#index'
end
