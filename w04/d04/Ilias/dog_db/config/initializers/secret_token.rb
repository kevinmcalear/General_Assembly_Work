# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '3a6ca4c2de14cbb7cf84c75a9ede9f98b03fdfb8676205362e9dda0fd1f9464ef444ca70b08e42b14a0d95781435981ffc7e73e253fa4511ca55695f4e416be7'
