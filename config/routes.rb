Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  patch '/orders/:id' => 'orders#update'
  delete 'products/:id' => 'products#destroy'
  get '/products/:id/edit' => 'products#edit'


  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
end
