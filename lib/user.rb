require 'bcrypt'
class User
  attr_reader :password
  attr_accessor :password_confirmation
  include DataMapper::Resource
  property :id, Serial
  property :email, String, unique: true, message: 'This email is already taken'
  property :password_digest, Text
  validates_confirmation_of :password,
                            message: 'Sorry, your passwords do not match'

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
