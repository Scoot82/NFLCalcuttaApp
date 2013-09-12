NFLCalcuttaApp::Application.routes.draw do
  root to: 'syndicates#index'
  resources :teams
  resources :syndicates
  resources :users
  resources :sessions
  resources :members
  post '/syndicates/:id', controller: 'syndicates', action: 'show'
end
