# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '0eaddaf168be0eefd0337a5d29e1977424d8ff6dac88e097c8b562bd00b618ee351a4d86b9950e99395f9a9a2e3cffacc3f83d71553ca4ad9063859a43f3a7c1'
