# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prototyp_session',
  :secret      => '43efe545b633a14e91b9b31fcd4fdf7810d10fb287d38bea649d7f6245ce8c6f81f9f815730a77b55fcea2f493407e00f345c6e3cd083f85754df46f4748f724'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
