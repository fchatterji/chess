Rails.application.routes.draw do
  get 'counter', to: 'counter#show'
  post 'increment', to: 'counter#increment'
  post 'decrement', to: 'counter#decrement'

  # Defines the root path route ("/")
  root "articles#index"

  get "/articles", to: "articles#index"
  get "dashboard", to: "dashboard#show"

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'
end
