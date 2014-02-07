# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = 'fb727cbb058332511e545636695e6170c2aa959e8c155603bde812237eb1a7eb4639cbe58c3629eae471f4ec971fa2703d83acb8e286507b737f3d3cee7fdab6'
