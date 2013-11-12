class Article < ActiveRecord::Base
	validates_presence_of :title
validates_uniquess_of :asset_id

	belongs_to :user

	def long_title
		"#{title} - #{published_at}" 
	end

end