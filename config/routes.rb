Rails.application.routes.draw do
  root 'pages#home'

  get '/show/:id', to: 'pages#show'
end
