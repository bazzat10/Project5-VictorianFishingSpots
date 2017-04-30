Rails.application.routes.draw do
  root 'pages#home'

  get '/show/:id', to: 'pages#show'

  get '/test', to:'pages#test'
end
