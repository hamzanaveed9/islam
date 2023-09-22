Rails.application.routes.draw do
  root 'pages#home'

  resources :events, only: [:show]
  resources :services, only: [:show]
  resources :feedbacks, only: [:new, :create]
  get '/about_us', to: 'pages#about_us'
end
