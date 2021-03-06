Rails.application.routes.draw do
  root to: 'products#index'

  resources :products, only: %i(show)

  get '/api/products', to: 'products#all'
  get '/api/products/:id', to: 'products#get'
  post '/api/products/:id/reviews', to: 'reviews#create'
end
