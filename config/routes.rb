Rails.application.routes.draw do
  resources :gossips do
  	resources :comments
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :cities, only: [:show]
end

Rails.application.routes.draw do
  get '/team', to: 'static#index_team'
  get '/contact', to: 'static#index_contact'
  get '/welcome/:name', to: 'static#index_welcome'
end