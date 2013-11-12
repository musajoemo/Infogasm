class User < ActiveRecord::Base
	validates_uniquess_of :email

	validates_length_of :email, :within 5..75
	validates_format_of :email, :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i
	validates_confirmation_of :password

	has_one :profile
	has_many :articles
end

