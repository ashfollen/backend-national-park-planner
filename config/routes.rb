Rails.application.routes.draw do
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/logged_in', to: 'application#logged_in?'

    resources :reservations, only: [:index, :create]
end
