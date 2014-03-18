# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Hangman::Application.config.secret_key_base = '32dcdcafb92f0550fdd28039fda813e10d2cfaba0841dc257b93b547b3cb3cb9105a5a62568253022371f6f47511a4f56b432c68033faa265937f859a4a58dac'
