require 'httparty'
# require 'json'

class Astronomy
  def initialize(zip)
    @response = JSON.parse(File.read("./batavia_astronomy.json"))
  end

  def sunrise
    hour = @response["moon_phase"]["sunrise"]["hour"]
    minutes = @response["moon_phase"]["sunrise"]["minute"]
    return "#{hour}:#{minutes}"
  end

  def sunset
    hour = @response["moon_phase"]["sunset"]["hour"]
    minutes = @response["moon_phase"]["sunset"]["minute"]
    return "#{hour}:#{minutes}"
  end
end
