NFLCalcuttaApp::Application.routes.draw do
  root to: 'teams#index'
  resources :teams
  resources :syndicates
  resources :users
  resources :sessions
end
