# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_functmetal_session',
  :secret      => '82fcca85389402e96eb3d459471a780502bd0c582b3dc169dead2a817ade25c2a9225b9859a6c3ec3e411e27e721e416e7b7a64885b704776d05f3864ffcf3cd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
