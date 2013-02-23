default_run_options[:pty] = true  

set :application, "event_organiser"

set :deploy_to, "/home/thedeuch/rails_apps/event_organiser"
set :use_sudo, false
set :user, "thedeuch"

set :scm, :git
set :scm_passphrase, ""
#set :repository, "git@github.com:jamesdeuchar/EventOrganiser.git"  
set :repository, "https://github.com/jamesdeuchar/EventOrganiser.git"

server "www.deuchar.com", :app, :web, :db, :primary => true

