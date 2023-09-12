Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'pages#home'
  resources :sliders, only: [:index, :new, :create]

  namespace :admin do
    get 'dashboard', to: 'admin#dashboard'
    get 'manage_users', to: 'admin#manage_users'
    # Add more admin routes as needed
  end

end
