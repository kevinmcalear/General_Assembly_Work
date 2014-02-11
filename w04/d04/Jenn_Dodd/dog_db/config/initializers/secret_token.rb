# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '8453c30ba7dab5e5113b9fdc63085fd2462a2879f35399485af534d7c959dd6227ad3d7c615437ee09d8ef07293e5bf0ffe14168e5d3ad9a91ec51bd4598c9d1'
