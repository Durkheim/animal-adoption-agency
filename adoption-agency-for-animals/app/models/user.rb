require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :animals_for_adoption, class_name: "Animal", foreign_key: :owner_id
  has_many :animals_they_can_adopt, class_name: "Animal", foreign_key: :adopter_id

  def password=(newpassword) #writer
    @password = Password.create(newpassword)
    self.password_hash = @password
  end

  def password #reader
    @password ||= Password.new(password_hash)
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user if user && user.password == password
  end

end

# user.password.==("password")

# module BCrypt
#   class Password
#     def initialize(password_hash)
#       @password_hash = password_hash
#     end

#     def self.create(password)
#       @password_hash = make_password(password)
#     end

#     "password"
#     def ==(value)
#       # "$1#asjnrebqe$*3iu4b" == "$1#asjnrebqe$*3iu4b"
#       @password_hash == make_password(value)
#     end

#     def to_s
#       @password_hash
#     end

#     private

#     def make_password(value)
#       mystery_function(value) # "password" => "$1#asjnrebqe$*3iu4b"
#                               # "passwrd"  => "$1#asjnrebqe$iasdfl"
#   end
# end


