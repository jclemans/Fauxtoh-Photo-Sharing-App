require 'spec_helper'

feature "the sign up process", :type => :feature do
  scenario "creates a new user account" do
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_content 'New User Sign Up'
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'testpassword'
      fill_in 'Password confirmation', :with => 'testpassword'
    click_button 'Sign Up'
    expect(page).to have_content 'Logged in as'
  end
end
