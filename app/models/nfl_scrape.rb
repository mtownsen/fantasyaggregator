class Nfl_Scrape
	attr_accessor :source_url, :site_url, :body, :article_date, :refid, :failure

	def scrape_nfl_news(url)
		begin
			doc = Nokogiri::HTML(open(url))
			doc.css('script').remove 
			self.site_url = url 
			self.source_url = ""
			self.article_date = ""
			self.refid = 1
			s = doc.css('#player-news-list:first-child div.player-expanded table tbody tr td.player-news div.player-news-text').text
				if ! s.valid_encoding?
					s = s.encode("UTF-16be", :invalid=>:replace, :replace=>"?").encode('UTF-8')
				end
			self.body = s
			return true
		rescue Exception => e
			self.failure = "Something went wrong with the scrape"
		end
	end
end