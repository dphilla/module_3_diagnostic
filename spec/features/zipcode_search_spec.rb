require 'rails_helper'


feature "as a user" do
  scenario "submits valid zipcode" do

    visit '/'

    fill_in :q, with: '80203'

    click_on("Locate")

    expect(current_path).to eq("/search")
    expect(page).to have_content("Name: UDR ")
    expect(page).to have_content("Address: 800 Acoma St")
    expect(page).to have_content("Fuel Types: ELEC")
    expect(page).to have_content("0.31422 miles from given zip")
    expect(page).to have_content("Access Times: 24 hours daily")
  end
end


