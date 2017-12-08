Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  get '/users/auth/spotify/callback', to: 'users#spotify'
  post '/users/auth/spotify/callback', to: 'users#spotify'
  resources :matches
  root to: 'pages#home'
  get '/profile', to: 'users#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
