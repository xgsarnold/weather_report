require 'minitest/autorun'
require 'minitest/pride'

require 'httparty'
require 'json'

require './wreport.rb'

# $mock_inputs = []
# def get_user_input
#   $mock_inputs.shift
# end

class WeatherTest < Minitest::Test
  def test_01_weather_reporting_classes_exist
    assert Condition
    assert Forecast
    assert Astronomy
    assert Alert
    assert Hurricane
  end

  def test_02_return_location_and_temperature
    c = Condition.new()
    assert_equal 50.0, c.temperature
    assert_equal "Durham, NC", c.location
  end

  def test_03_return_ten_day_forecast
    f = Forecast.new(27704)
    assert f.forecast_ten_days
  end

  def test_04_return_sunrise_and_sunset_times
    a = Astronomy.new(27704)
    assert_equal "6:39", a.sunrise
    assert_equal "17:34", a.sunset
  end


end



  # $mock_inputs.clear
  # $mock_inputs << "A1"
  # $mock_inputs << "Down"
  # $mock_inputs << "A4"
  # $mock_inputs << "Down"
