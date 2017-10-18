class NrelService


    # working endpoint 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203'


  def initialize(zipcode)
    @zipcode = zipcode
    @conn = Faraday.new("https://api.data.gov/nrel") do |faraday|
      faraday.headers["X-Api-key"] = ENV[:nrel_key]
      faraday.adapter Faraday.default_adapter
    end
  end


  def get_url
   response = @conn.get("/alt-fuel-stations/v1/nearest.json?location=#{@zipcode}")
   JSON.parse(response.body)
   require 'pry'; binding.pry
  end

end
