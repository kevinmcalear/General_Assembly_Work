# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '36098d0b5b278e01d2f5c07eebf4849ab28020baa0b2137d90b9d18e948ada0ae54e5067b1d3fe388c4cd350543c34918feccf9ca3b0213df01446c346eaa64f'
