Rails.application.routes.draw do
  get '/convidados', to: 'invites#index'
  post '/convidados', to: 'invites#create'
  delete '/convidados/:id', to: 'invites#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
