lock '3.18.0'

set :application, 'islam'
set :repo_url, 'https://github.com/hamzanaveed9/islam'
set :branch, :main
set :deploy_to, '/home/deploy/islam'
set :pty, true
set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :keep_releases, 5