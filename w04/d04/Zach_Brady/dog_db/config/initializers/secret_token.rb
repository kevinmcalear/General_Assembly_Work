# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = 'f78f1a2b7caa910a26adbc3f115b285c6d5332ea815c28a26e48ab56f026b4b26c68b098a2a428b71651feead3dc6efc527eabfd10aa9f6ccca6dfbc0069974f'
