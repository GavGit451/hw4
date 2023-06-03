secret = "password"
encrypted_secret = BCrypt::Password.create(secret)
puts encrypted_secret

user_entered_secret = "password"