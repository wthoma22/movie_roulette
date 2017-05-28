require 'rails_helper'

RSpec.describe "User can visit the landing page" do
  scenario "a user can see the landing page" do

    visit root_path

    expect(page).to have_content("Welcome")
    expect(page).to have_content("Login")
    expect(page).to have_content("Create Account")

  end

  scenario "a user can enter a movie title to find movie info" do
    movie = create(:movie)

    visit root_path

    within("form") do
      fill_in "title", with: "movie.title"
      click_on "Search"
    end

    expect(current_path).to eq movies_path
    expect(page).to have_content(movie.title)
  end
end
