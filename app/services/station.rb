class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(attrs)
    @name
    @address
    @fuel_types
    @distance
    @access_times
  end

  def self.filter(zipcode)
   stations = NrelService.new(zipcode).get_url
   #map each station hash to a new instance of station

   stations.map do |station|
     Station.new(station)
   end

  end
end
