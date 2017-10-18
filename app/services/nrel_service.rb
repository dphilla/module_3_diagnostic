class NrelService


    # working endpoint 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203'


  def initialize(zipcode)
    @zipcode = zipcode
    @conn = Faraday.new("https://api.data.gov") do |faraday|
      faraday.headers["X-Api-key"] = "iDTNTs2B4Ixz116i3QeZmu5FHLY0DfLEuqQdjEtd"
      faraday.adapter Faraday.default_adapter
    end
  end


  def get_url
   response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=#{@zipcode}")
   parsed = JSON.parse(response.body)
   parsed["fuel_stations"]
  end

end
