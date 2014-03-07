# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '949311a9f881dacf8d047cd652835a4fd18ccdfdf04c49c3810fe224bdf6883d888e9033f0ec5e18d8a11069d5eb3b8e3538e5384739ca90be4118a7bec3423f'
