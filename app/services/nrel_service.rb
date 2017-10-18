class NrelService

  def initialize(zipcode)
    @zipcode = zipcode
    @conn = Faraday.new("https://api.data.gov") do |faraday|
      faraday.headers["X-Api-key"] = ENV["nrel_key"]
      faraday.adapter Faraday.default_adapter
    end
  end


  def get_url
    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?limit=10&radius=6.0&fuel_type=ELEC,LPG&location=#{@zipcode}")
   parsed = JSON.parse(response.body)
   parsed["fuel_stations"]
  end

end
