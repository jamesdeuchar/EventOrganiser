# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eventorganiser-2.3_session',
  :secret      => 'f3cd08715bc46d6056312b759baf8c0ccab701730899dd2e0b47c1ad1f1689cf52fe7a3ff3a29e4d8831e7b4b54e8e82622d00100cb3e42e802c5fb929f17f13'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
