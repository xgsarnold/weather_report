require 'httparty'
require 'json'

class Astronomy
  def initialize(zip)
    @response = JSON.parse(File.read("./batavia_astronomy.json"))
  end

  def sunrise
    hour = @response["moon_phase"]["sunrise"]["current_time"]["hour"]
    minutes = @response["moon_phase"]["sunrise"]["current_time"]["minute"]
    return "#{hour}:#{minutes}"
  end

  def sunset
    hour = @response["moon_phase"]["sunset"]["current_time"]["hour"]
    minutes = @response["moon_phase"]["sunset"]["current_time"]["minute"]
    return "#{hour}:#{minutes}"
  end
end
