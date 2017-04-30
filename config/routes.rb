Rails.application.routes.draw do
  root 'pages#home'

  get '/show/:id', to: 'pages#show'

  get '/weather/:id', to:'pages#weather'

end
