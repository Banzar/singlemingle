class User < ApplicationRecord
	has_secure_password
	before_save { email.downcase }
	validates_presence_of :fname, :lname, :username, :password, :password_confirmation, :email, :looking_for, :sex, :headline 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: { maximum: 255 },
		format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
end
