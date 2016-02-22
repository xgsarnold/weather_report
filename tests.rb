require 'minitest/autorun'
require 'minitest/pride'
require 'httparty'

require './wreport.rb'

class WeatherTest < Minitest::Test
  def test_01_weather_reporting_classes_exist
    assert CurrentConditions
    assert TenDayForcast
    assert SunriseSunset
    assert WeatherAlert
    assert Hurricane
  end


end
