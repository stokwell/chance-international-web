# config valid only for current version of Capistrano
lock "3.9.0"

set :application, "chance-web"
set :repo_url, "git@github.com:stokwell/chance-web.git"


# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/chance-web"
set :deploy_user, 'deploy'
set :rbenv_ruby, '2.2.3'
set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }


# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')


# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads' )

namespace :deploy do
  desc 'Restart application'
  task :restart  do
    invoke 'passenger:restart'
  end

  after :publishing, :restart
end
