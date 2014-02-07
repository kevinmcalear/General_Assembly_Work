# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '90a921fb283d5f6042ddf9c5ec9f2eb66bd7031a5b0a89cf4ec20a4f68cb05ed5dd79e3adf0fe39e00cb80f8c65e16e499bb65d22d30825aac3e7bc43e85aed7'
