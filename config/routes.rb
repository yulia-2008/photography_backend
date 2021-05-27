Rails.application.routes.draw do
  resources :users
  resources :photos

  post '/login', to: 'auth#create'
  post '/photos/:id/upload_image', to: 'photos#upload_image'
end
