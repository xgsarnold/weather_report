require 'httparty'

class Condition
  def initialize()
    @response = JSON.parse(File.read("./durham_condition.json"))
    # @response = HTTParty.get("http://api.wunderground.com/api/#{ENV[WUNDERGROUND_KEY]}/conditions/q/#{zip}"
  end

  def temperature
    @response["current_observation"]["temp_f"]
  end

  def location
    @response["current_observation"]["display_location"]["full"]
  end
end
