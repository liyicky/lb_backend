# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
LbBackend::Application.config.secret_key_base = '3a5b3a98c3dedbf32d4402c049347d2a1e6426a82aa55d5596c73059eff2b2d1f41d1230ce0872dbdb59c8e58bba183d075968a112cfbb8159569bd9e8fbf4e9'
