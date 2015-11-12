Rails.application.routes.draw do

  root to: "site#index"

  get "/signup", to: "users#new", as: :signup
  get "/profile", to: "users#show", as: :profile
# app.get('/profile', function(req, res ) {
#  res.render('profile')
#  })

  get "/login", to: "sessions#new", as: :login
  get "/logout", to: "sessions#destroy", as: :logout

  resources :users, only: [:show, :create]
  resources :sessions, only: [:create]

end