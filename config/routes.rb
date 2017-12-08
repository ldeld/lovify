Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get '/users/auth/spotify/callback', to: 'users#spotify'
  get '/matches/no_matches', to: 'matches#no_matches'
  post '/users/auth/spotify/callback', to: 'users#spotify'
  resources :matches
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
