# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '5766ace43dcb8dfc4db7042f9a1ae691c453b1674b7d3ce1d57cecce2d197825c2a64e19807c600216511b1f0c237d82d5ee97c6804504e65101d6c41fec9420'
