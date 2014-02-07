# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = 'c5b6c6e3aa79c2e4bcda90c52fddbd44a3672427b19e0751cc3e055ca9230956e36a3d45f3fdc968a451d01a9cc669117cd8baf5328029fe49a79f9de844956a'
