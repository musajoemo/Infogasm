class User < ActiveRecord::Base
	validates_uniquess_of :email

	validates_length_of :email, :within 5..75

	has_one :profile
	has_many :articles
end
