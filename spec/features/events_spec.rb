require 'rails_helper'

feature "Creating an event" do
  scenario "with correct params" do
    visit root_path
    click_link_or_button 'New Event'

    fill_in 'Title', with: "Party at Greg's house"
    fill_in 'Description', with: 'His parents are out of town!'
    select '2020', from: 'event_date_1i'
    select 'July', from: 'event_date_2i'
    select '9', from: 'event_date_3i'
    select '17', from: 'event_time_4i'
    select '30', from: 'event_time_5i'
    click_link_or_button 'Create Event'
    
    expect(page).to have_content "Party at Greg's house"
  end

  scenario "with missing title" do
    visit root_path
    click_link_or_button 'New Event'

    fill_in 'Title', with: ""
    fill_in 'Description', with: 'His parents are out of town!'
    select '2020', from: 'event_date_1i'
    select 'July', from: 'event_date_2i'
    select '9', from: 'event_date_3i'
    select '17', from: 'event_time_4i'
    select '30', from: 'event_time_5i'
    click_link_or_button 'Create Event'
    
    expect(page).to have_content "Title can't be blank"
  end
end