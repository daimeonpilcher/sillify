class WelcomeController < ApplicationController
	require 'nokogiri'
    require 'open-uri'
    require 'json'

	def index
		@user = User.new
		@word_freq = word_freq.to_json
	end

	def word_freq
		doc = Nokogiri::HTML(open("http://localhost:3000/blanks"))
		article_array = doc.search('//text()').text.scan(/[\w']+/)
		@word_freq = Hash.new 0
		article.array.each do |w|
			@word_freq[w] += 1
		end
	end
end
