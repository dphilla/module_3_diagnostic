require 'rails_helper'


feature "as a user" do
  scenario "submits valid zipcode" do

    visit '/'

    fill_in :q, with: '80203'

    click_on("Locate")

    #expect().to have_content(#something)
    #expect(page).to have_content(#something)
    #expect(page).to have_content(#something)
    #expect(page).to have_content(#something)
  end
end
