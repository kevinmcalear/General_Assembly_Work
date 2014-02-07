# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '4f1f7287e9dcd88790d748c8f8e81dd4a11b69b2be34a2f0e291cba11edeffd87bb8961d3304f475e6a9cb13f77c7edfd9a90705d7fab5f6fcd51677b31d34b4'
