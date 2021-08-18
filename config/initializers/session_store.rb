# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Instragram_session',
  :secret      => 'd91f77e731a3677cd1a1db5b3d31eef76139149d7d9901d0372e3b0d078becf818d44c64922f3d7de2a175346b2aa716345976dbdc1946134e8f68b63aa89cdc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
