class WelcomeController < ApplicationController
	require 'open-uri'

	include ActionView::Helpers::OutputSafetyHelper
	
	def index
		@user = User.new
		get_freq
		@word_freq = @word_freq.sort_by {|k,v| v}.reverse.to_h.as_json
		#render json: @word_freq
		p @word_freq
		@combined_article = raw(@combined_article)
	end

	def create
		@url = [:url] 
	end

	def get_freq
		doc = Nokogiri::HTML(open("http://www.cnn.com/2015/07/16/politics/woman-10-bill-rosie-rios/index.html"))
		# data = File.open("app/views/blanks/index.html.erb") {|io| io.read}
		#p "Nokogiri Scraping blanks"
		# doc = Nokogiri::HTML(data)
		p "detecting and converting text to array"
		headline = doc.at('h1.pg-headline').to_s 
		byline = doc.at('div.metadata').to_s 
		article = doc.at('section.zn.zn-body-text').to_s
		@combined_article = "#{headline} #{byline} #{article}"
		hl_ar = doc.search('h1.pg-headline').text.downcase.scan(/[\w']+/)
		bl_ar = doc.search('div.metadata').text.downcase.scan(/[\w']+/)
		ar_ar = doc.search('section.zn.zn-body-text').text.downcase.scan(/[\w']+/)
		article_array = hl_ar + bl_ar + ar_ar
		@word_freq = Hash.new 0
		article_array.each do |w|
			@word_freq[w] += 1
		end
		@word_freq
		@article
	end
end
