class User < ApplicationRecord
  has_many :twitter_accounts
  # emai:string
  # password_digest:string
   # has_secure_password created 2 virtual attributes
   # password:string virtual
   # password_confirmation:String virtual
  # method from rails this is goint to use password_digest column in out db and its goint to add a password and password confirmation to our User , these are virtual atributes that won't get saved to db but when u submit a passwird it will run throught bcryptand
  has_secure_password
  validates :email , presence: true

end
