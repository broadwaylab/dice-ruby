# dice-ruby

A gem for working with the [Dice](http://dice.com) json API. 

# Installation

```
gem install dice-ruby
```
 # Example
 
 Initialize the client. All parameters are optional.
 ```
 client = Dice::Client.new(text: 'contract ruby', area_code: '90210', country: 'usa', state: 'ca', skill: 'ruby', city: 'los angeles', page: 2)
 ```
 
 Typical usage will look something like this: 
 ``` 
 client = Dice::Client.new(text: 'front end developer', skill: 'javascript')
 client.search.each do |result| 
    puts "#{result.url} #{result.title} #{result.company} #{result.location} #{result.date}"
end
```
# Are you a freelancer? 

We built this to help find the best jobs on the market quickly. Check out [Broadway Leads](http://broadwaylab.com/leads) for more details. 

# Copyright

Copyright (c) 2016 Broadway Lab, Inc. See [LICENSE](license) for details. 

