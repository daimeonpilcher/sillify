class WelcomeController < ApplicationController
	include ActionView::Helpers::OutputSafetyHelper
	def index
		@user = User.new
		get_freq
		@word_freq = @word_freq.sort_by {|k,v| v}.reverse.to_h.as_json
		#render json: @word_freq
		p @word_freq
		@article = raw(@article)
	end

	def get_freq
		data = File.open("app/views/blanks/index.html.erb") {|io| io.read}
		p "Nokogiri Scraping blanks"
		doc = Nokogiri::HTML(data)
		p "detecting and converting text to array"
		@article = doc.at('body').inner_html
		article_array = doc.search('//text()').text.downcase.scan(/[\w']+/)
		@word_freq = Hash.new 0
		article_array.each do |w|
			@word_freq[w] += 1
		end
		@word_freq
		@article
	end
end
