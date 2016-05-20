require_relative './lib/dice.rb'

client = Dice::Client.new(text: 'ios contract', skill: 'ios')

client.search.each do |result|
	puts result
end

