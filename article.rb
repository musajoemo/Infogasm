require 'json'
require 'rest-client'
require 'nokogiri'


def list_of_stories(story)
"#{story[:title]}, Category: #{story[:url]}"
end

def get_from_new_york_times_technology_by_views
	results = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostshared/Technology//7.json?&offset=20&api-key=f6011d5bbcaa84ed2a1c0e85030e928a:0:65510627'))
		results["results"].map do |story|
  		story =	[title: story["title"], url: story["url"], storyid: story["id"]] 
		end
		puts "#{list_of_stories(story)}"
end


def show_all_stories(stories)
  stories.each do |story|
    show_message "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
  end
e)nd


def Article|url|
	get_article(url)
	title = 
end	


def get_article(story) each do
	@page = Nokogiri::HTML(RestClient.get(story :url))
end
