require 'rails_helper'

feature 'visit root page' do
  scenario 'user visits root page' do
    visit root_path
    expect(page).to have_text("Enter Your Location")
    expect(page).to have_text("Find A Station")
  end
  scenario 'user expects input field on root page' do
    visit root_path
    expect(rendered).to have_selector("input", :type => "text", :value => "")
  end

  scenario 'user should not see station options on initial visit' do
    visit root_path
    expect(page).to have_no_css('div.closest-station-option')
  end

  scenario 'user should see station options when submitting address' do
    visit root_path
    click_button("submit-address-button")
    expect(page).to have_css('div.closest-station-option')
  end

  scenario 'user should see station options when submitting address' do
    visit root_path
    #address input field needs the id 'submit-address-form'
    fill_in "submit-address-form",:with => '48 Wall Street, New York, NY'
    click_button("submit-address-button")
    expect(page).to have_css('div.closest-station-option')
  end

  xscenario 'maps should be hidden until station is clicked' do

  end

  xscenario 'maps should be displayed station is clicked' do

  end

  xscenario 'stations should include service status updates' do

  end

  xscenario 'stations should include distance' do

  end

end




feature 'visit other_resource page' do
  scenario 'visits other_resource page' do
    visit other_resources_path
    expect(page).to have_text("Other Resources")
  end

  scenario 'visits other_resource page to view map' do
    visit other_resources_path
    expect(page).to have_css("img[src*='subwayrecord']")
    end

  # scenario 'visits other_resource page to view map' do
  #   visit other_resources_path
  #   find(:css, "div.subway-record-map").should be_visible

  #   end
end




feature 'visit About page' do
  scenario 'visits About page' do
    visit about_index_path
    expect(page).to have_text("Our Mission")
  end

end




    # visit root_path (find a station)

#     expect page text to include "Enter Your Location"
#     expect page to have geolocation object
#     (stub four stations to make them appear)
#     expect page to have a input box powered by Google to input
#     expect to click the input box, user can enter an address or have location detected
#     expects to click and four divs appear for each option
#     expect each div to have a route name and distance
#     expect to see service status icon in divs
#       expect to click on div and see map


# resources page
# expect a map
# expect a list of clickable resources
# expect separation by boroughs


# about page
# mission
# what makes us unique
# includes feedback form?


#     expect a nav

#     click_link 'Sign-Up'
#     fill_in 'Username', :with => 'John'
#     fill_in 'Email', :with => 'john@example.com'
#     fill_in 'Password', :with => 'password'
#     click_button 'Create'
#     expect(page).to have_content "Logout"
#   end
