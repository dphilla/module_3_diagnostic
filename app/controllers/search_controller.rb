class SearchController < ApplicationController

  def index

    # working endpoint 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203'
    @stations = Station.filter(params[:q])
  end
end
