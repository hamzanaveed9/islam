Rails.application.routes.draw do
  root 'pages#home'

  resources :events, only: [:show]
  get '/about_us', to: 'pages#about_us'
end
