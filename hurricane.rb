class Hurricane
  def initialize()
    @response = JSON.parse(File.read("./mock_hurricane.json"))
  end

  def storms
    (0..2).each do |num|
    @response["currenthurricane"]["stormInfo"][num]["stormName"]
    end
  end
end
