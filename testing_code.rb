require 'json'
require 'rest-client'
require 'nokogiri'

def Article
	title = :title
	
end	


#get_list_new_york_times_technology_by_views
def a 
	@res = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/Technology/1.json?&offset=20&api-key=f6011d5bbcaa84ed2a1c0e85030e928a:0:65510627'))
end


#get_article
def b
	@page = Nokogiri::HTML(RestClient.get(@res["results"][0]["url"]))
end

clean_story = print(@page.css('.articleBody p').text)

def next?
	ending = @page.at_css('.next')[:href]
	@next_page = "http://www.nytimes.com#{ending}"
		if @next_page.length.to_i > 28 do
		Article.new(@next_page))
		end
end

=begin
def list_of_stories(story)
"#{story[:title]}, Category: #{story[:url]}"
=end

#article = %W(#{page})


require 'rest-client'
require 'nokogiri'
@page = Nokogiri::HTML(RestClient.get("http://www.nytimes.com/2013/10/29/technology/some-schools-extend-surveillance-of-students-beyond-campus.html?_r=1"))