# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rsvp_session',
  :secret      => 'd8eb1d80e62f4458aafad12d2b78ca2d0744509644b8dd5a5f84e708cc5edc068c221612ff8898de855e842a588ead883d2006ae96678bedf9e8ac46a6f9d263'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
