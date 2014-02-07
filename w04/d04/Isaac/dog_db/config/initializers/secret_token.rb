# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = 'f192344add135eeed3e9b0f104f7a47752a67db06ee8e3019a2195ada94ab118aa6295ba77f9acd3175b2cd1f90c13bad36442aa88b41ec2b011c8e66c0d6690'
