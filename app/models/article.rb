class Article < ActiveRecord::Base
	validates_presence_of :title

	belongs_to :user

	def long_title
		"#{title} - #{published_at}"
	end

end