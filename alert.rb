class Alert
  def initialize(zip)
    @response = JSON.parse(File.read("./clinton_alerts.json"))
  end

  def alert
    @response["alerts"][0]["message"]
  end
end
