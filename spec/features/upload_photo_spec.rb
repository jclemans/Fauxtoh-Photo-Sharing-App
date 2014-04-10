require 'spec_helper'

feature "Upload Photo" do
  before do
    create_user_and_sign_in
  end
  scenario "lets a user upload a photo" do
    click_link 'user@email.com'
    click_link 'Upload Photo'
    attach_file 'photo[photo]', File.join(Rails.root, 'spec', 'fixtures', 'files', 'test_photo.jpg')
    click_button 'Submit'
    expect(page).to have_content 'Fauxtoh Saved!'
  end
end
