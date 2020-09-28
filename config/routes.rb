Rails.application.routes.draw do

  root "roots#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/appointments', to: 'appointments#create'
 
  get '/appointments', to: 'appointments#index'
  get '/appointments/new', to: 'appointments#new'
  get '/appointments/:id', to: 'appointments#show', as: "appointment"
  
  get '/appointments/:id/edit', to: 'appointments#edit', as: "edit_appointment"
  patch '/appointments/:id', to: 'appointments#update'

  get '/appointments/:id', to: 'appointments#destroy'


  #doctors
  post '/doctors', to: 'doctors#create'
 
  get '/doctors', to: 'doctors#index'
  get '/doctors/new', to: 'doctors#new'
  get '/doctors/:id', to: 'doctors#show', as: "doctor"
  
  get '/doctors/:id/edit', to: 'doctors#edit', as: "edit_doctor"
  patch '/doctors/:id', to: 'doctors#update'

  get '/doctors/:id', to: 'doctors#destroy'

  #resources :appointments
end
