class Scraper

	def self.scrape
	
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/t/taylor_swift.html')

		doc = Nokogiri::HTML(response.body)

		quotes = []
		doc.css('.bqQuoteLink').each do |data|
  			quotes << data.content
		end

		quotes.sample

	end

end