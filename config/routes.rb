Rails.application.routes.draw do

  root "appointments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/appointments', to: 'appointments#create'
 
  get '/appointments', to: 'appointments#index'
  get '/appointments/new', to: 'appointments#new'
  get '/appointments/:id', to: 'appointments#show', as: "appointment"
  
  get '/appointments/:id/edit', to: 'appointments#edit'
  get '/appointments/:id', to: 'appointments#update'

  get '/appointments/:id', to: 'appointments#destroy'
  #resources :appointments
end
