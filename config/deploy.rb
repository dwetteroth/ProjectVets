# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"


set :application, "mashey.com"
set :repo_url, "git@github.com:Mashey/mashey.com.git"

set :use_sudo, false

# set :rvm_type, :system

set :default_shell, "/bin/bash -l"
set :branch, 'master'
set :assets_roles, [:web, :app]
set :rails_assets_groups, :assets
set :linked_dirs, %w(log node_modules)
set :linked_dirs, fetch(:linked_dirs, []) << '.bundle'
#append :linked_dirs, '.bundle'

set :bundle_roles, :all                                         # this is default
set :bundle_binstubs, -> { shared_path.join('bin') }            # default: nil
set :bundle_gemfile, -> { release_path.join('Gemfile') }      # default: nil
set :bundle_path, -> { shared_path.join('bundle') }             # this is default. set it to nil for skipping the --path flag.
set :bundle_without, %w{development test}.join(' ')             # this is default
set :bundle_flags, '--deployment --quiet'                       # this is default

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets"
#append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets node_modules"

set :keep_releases, 3

set :conditionally_migrate, true
set :log_level, :debug
set :pty, true
# set :format, :pretty
set :format, :airbrussh


### Deploy Hooks
before  'deploy:updated',          'deploy:yarn_install'
after "deploy:published",          'deploy:restart_server'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure