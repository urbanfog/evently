require 'rails_helper'

feature "Creating an event" do
  scenario "with correct params" do
    visit root_path
    click_link_or_button 'New Event'

    fill_in 'Title', with: "Party at Greg's house"
    fill_in 'Description', with: 'His parents are out of town!'
    fill_in 'Date', with: '12-Dec-2020'
    fill_in 'Time', with: '5:00 pm'
    click_link_or_button 'Create Event'
    expect(page).to have_content 'Success'
  end
end