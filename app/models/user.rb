class User < ActiveRecord::Base

	# allos for token authentication using simple_token_authentication gem
	acts_as_token_authenticatable

  	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable
end
