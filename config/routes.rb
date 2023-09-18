Rails.application.routes.draw do
  resources :events, only: [:show]
  root 'pages#home'  
end
