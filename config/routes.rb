Rails.application.routes.draw do


  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  get '/users/auth/spotify/callback', to: 'users#spotify'
  post '/users/auth/spotify/callback', to: 'users#spotify'

  get '/matches/no_matches', to: 'matches#no_matches'
  resources :matches do
  resources :rdvs, only: [:create]
  end
  resources :rdvs, only: [:index, :show]
  get '/rdvs/:id/accept', to: 'rdvs#accept', as: "accept_rdv"

  resources :conversations do
    resources :messages
  end

  root to: 'pages#home'
  get '/profile', to: 'users#profile'
  get '/next-match', to: "matches#redirect_match"

  get 'bars/:id', to: 'bars#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
