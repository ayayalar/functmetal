default_run_options[:pty] = true
set :application, "functmetal"
set :repository,  "git@github.com:ayayalar/functmetal.git"
set :scm, :git
#set :scm_passphrase, "mftsgs" #This is your custom users password
#set :user, "ayayalar"
set :deploy_to, "/Library/WebServer/Sites/functmetal"
#ssh_options[:forward_agent] = true
#set :branch, "master"
#set :deploy_via, :remote_cache
set :scm_command, "/usr/local/git/bin/git"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "aymini.local"                          # Your HTTP server, Apache/etc
role :app, "aymini.local"                          # This may be the same as your `Web` server
role :db,  "aymini.local", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end