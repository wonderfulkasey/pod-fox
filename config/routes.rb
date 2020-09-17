Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/appointments', to: 'appointments#index'
  get '/appointments/new', to: 'appointments#new'
  get '/appointments/:id', to: 'appointments#show', as: "appointment"

end
