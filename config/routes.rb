Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get '/users/auth/spotify/callback', to: 'users#spotify'
  post '/users/auth/spotify/callback', to: 'users#spotify'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
