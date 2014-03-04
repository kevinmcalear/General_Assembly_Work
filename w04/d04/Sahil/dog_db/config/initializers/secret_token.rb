# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = 'ce3cf7bd5d8c562cc87272679d5c34c2f666e86403235385a5af2eaed427a638dddd9ab1d2310661854fa451f8fe534382a2dd70d543dd579d3b7b02d402d271'
