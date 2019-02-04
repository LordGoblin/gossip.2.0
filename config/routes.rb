Rails.application.routes.draw do
  get '/team', to: 'static#index_team'
  get '/contact', to: 'static#index_contact'
  get '/welcome/:name', to: 'static#index_welcome'
  get '/accueil', to: 'static#index_accueil'
  get '/accueil/:gossbo', to: 'static#index_potin_post'
  get '/accueil/user/:usebo', to: 'static#index_user_post'
end
