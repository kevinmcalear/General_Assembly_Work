# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '703e501356a4802f5349c20ef965a3ee23e8689c1e5ab34dc140a8c9890665bdb1e694a7d27e7e23e9f5adccc397706d95213649659832fa3ac5564ea8a6b34e'
