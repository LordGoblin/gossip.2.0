Rails.application.routes.draw do
  get '/team', to: 'static#index_team'
  get '/contact', to: 'static#index_contact'
  get '/welcome/:name', to: 'static#index_welcome'
  get '/accueil', to: 'static#index_accueil'
end
