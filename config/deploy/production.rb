set :rails_env, 'production'
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
server '52.63.32.249', user: 'deploy', roles: %w{web app db}