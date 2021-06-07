Rails.application.routes.draw do
  resources :users
  resources :photos

  post '/login', to: 'auth#create'
end
