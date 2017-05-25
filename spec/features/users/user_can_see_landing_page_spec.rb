require 'rails_helper'

RSpec.describe "User can see the landing page" do
  scenario "a user can see the landing page" do

    visit root_path

    expect(page).to have_content("Welcome")
  end
end
