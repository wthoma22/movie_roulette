require 'rails_helper'

RSpec.describe "User visits login page" do
  it "they can log in" do
    user = create(:user)

    visit login_path
    within("form") do
      fill_in "username", with: user.username
      fill_in "password", with: user.password
      click_on "Login"
    end

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Successfully logged in!")
    expect(page).to have_content("Welcome, zuzu!")
    expect(page).to have_content("Logout")
  end
end
