module Dice
	class Result
		attr_accessor :url, :title, :company, :location, :date

		def initialize(attrs = {})
			self.url = attrs[:data]['detailUrl']
			self.title = attrs[:data]['jobTitle']
			self.company = attrs[:data]['company']
			self.location = attrs[:data]['location']
			self.date = attrs[:data]['date']
		end
	end
end