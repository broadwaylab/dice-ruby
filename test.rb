require './lib/dice.rb'

client = Dice::Client.new(text: 'ios')
client.search.each do |result| 
	puts result.title
end