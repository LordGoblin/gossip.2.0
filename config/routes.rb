Rails.application.routes.draw do
  get '/team', to: 'static#index_team'
  get '/contact', to: 'static#index_contact'
end
