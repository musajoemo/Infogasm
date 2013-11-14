require 'json'
require 'rest-client'
require 'nokogiri'

#This calls on the infamously evil NY Times api
def get_from_new_york_times_technology_by_views
	@results = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostshared/Technology//7.json?&offset=20&api-key=f6011d5bbcaa84ed2a1c0e85030e928a:0:65510627'))
end

#this is not dry I know... I'm sorry
def list_first_five_workaround
	puts "@a0: #{@results["results"][0]["title"]}"
	@a0 = get_article(@results["results"][0]["url"])
	puts "@a1: #{@results["results"][1]["title"]}"
	@a1 = get_article(@results["results"][1]["url"])
	puts "@a2: #{@results["results"][2]["title"]}"
	@a2 = get_article(@results["results"][2]["url"])
	puts "@a3: #{@results["results"][3]["title"]}"
	@a3 = get_article(@results["results"][3]["url"])
	puts "@a4: #{@results["results"][4]["title"]}"
	@a4 = get_article(@results["results"][4]["url"])
	"done"
end

def get_article(url)
	@page = Nokogiri::HTML(RestClient.get(url))
end

#Using nokogiri css selectors - I figured this out by using Selector gadget from Rails Cast 
def clean_story
	print(@page.css('.articleBody p').text)
	print(@page.css('.postContent p').text)
end

get_from_new_york_times_tec!hnology_by_views
list_first_five_workaround

#this is when I realized I should move over to rails
#def Article|url|
#	get_article(url)
#	title = 
#end	

=begin
#Currently broken - time saving doing a cheap work around.
#TypeError: no implicit conversion of Symbol into Integer

def list_of_stories(story)
"#{story[:title]}, Category: #{story[:url]}"
end

def map_results_from_ny_times
		@results["results"].map do |story|
  		story =	[title: story["title"], url: story["url"]]
			puts "#{list_of_stories(story)}"
		end
end


#This unfinished method was to check if there is a next page to the article, if so it would go in and grab the next page as well
def next?
	ending = @page.at_css('.next')[:href]
	@next_page = "http://www.nytimes.com#{ending}"
		if @next_page.length.to_i > 28 do
		Article.new(@next_page))
		end
end

=end