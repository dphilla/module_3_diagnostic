class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(parsed)
    @name         = parsed["station_name"]
    @address      = parsed["street_address"]
    @fuel_types   = parsed["fuel_type_code"]
    @distance     = parsed["distance"]
    @access_times = parsed["access_days_time"]
  end

  def self.filter(zipcode)
   stations = NrelService.new(zipcode).get_url
   #map each station hash to a new instance of station

   stations.map do |station|
     Station.new(station)
   end

  end
end
