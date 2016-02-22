require "httparty"

reponse = HTTParty.get("http://api.wunderground.com/api/#{WUNDERGROUND_KEY}/conditions/..."

puts repsonse
