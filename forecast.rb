class Forecast
  def initialize(zip)
    @response = JSON.parse(File.read("./batavia_forecast.json"))
  end

  def forecast_ten_days
    forecast = {}
    (0..19).each {|n| forecast[day(n)] = weather(n)}
    forecast
    # @response["forecast"]["txt_forecast"]["forecastday"].each do |period|
  end



  def day(period)
    @response["forecast"]["txt_forecast"]["forecastday"][period]["title"]
  end

  def weather(period)
    @response["forecast"]["txt_forecast"]["forecastday"][period]["fcttext"]
  end

end
