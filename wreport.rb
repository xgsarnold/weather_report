require "httparty"

reponse = HTTParty.get("http://api.wunderground.com/api/#{ENV[WUNDERGROUND_KEY]}/conditions/q/#{}"

puts repsonse
