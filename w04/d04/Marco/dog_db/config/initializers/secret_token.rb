# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '6be3d542e581e30fea9b1fa6153c74d6f25e0bee03985e5e6c2ad0c6569a52a5aa474583699e0b51b5485daa25b45ee54944ac5ea0283143e6480a6c5a72343e'
