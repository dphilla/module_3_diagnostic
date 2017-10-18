require 'rails_helper'

describe 'class methods' do
  scenario '.filter limiting' do

  @stations = Station.filter('80203')

  expect(@stations.count).to eq(10)
  end
end
