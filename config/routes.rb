Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'
  post '/orders' => 'orders#create'
end
