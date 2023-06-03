secret = "password"
encrypted_secret = BCrypt::Password.create(secret)
puts encrypted_secret
user_entered_secret = "password"
result = BCrypt::Password.new(encrypted_secret) == user_entered_secret
puts result