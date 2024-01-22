server "13.211.211.59", port: 22, roles: [:web, :app, :db], primary: true
set :stage, :production
set :branch, :main