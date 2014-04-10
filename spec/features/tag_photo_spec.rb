require 'spec_helper'

feature "Upload Photo" do
  before do
    create_user_and_sign_in
    upload_photo
  end
  scenario "lets a user tag another user in a photo" do
    visit '/photos/1'
    select('user@email.com', :from=> 'tag[user_id]')
    click_button 'Add Tag'
    expect(page).to have_content 'Behold'
  end
end


