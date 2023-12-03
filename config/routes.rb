Rails.application.routes.draw do
  root 'pages#home'

  resources :events, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :feedbacks, only: [:new, :create]
  resources :galleries, only: [:index, :show]
  resources :faqs, only: [:index]
  get '/about_us', to: 'pages#about_us'
end
