require 'rails_helper'

RSpec.describe "User visits a new user page" do
  it "they can create a new user" do
    visit new_user_path
    
    fill_in "user[username]", with: "zuzu"
    fill_in "user[email]", with: "zuzu@pup-tart.com"
    fill_in "user[password]", with: "meatball"
    click_on "Create User Account"

    expect(current_path).to eq(user_path(User.last.id))
    expect(page).to have_content("Successfully logged in!")
    expect(page).to have_content("Welcome, zuzu!")
  end
end
