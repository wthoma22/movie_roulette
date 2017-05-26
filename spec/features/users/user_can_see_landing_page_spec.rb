require 'rails_helper'

RSpec.describe "User can visit the landing page" do
  scenario "a user can see the landing page" do

    visit root_path

    expect(page).to have_content("Welcome")
    expect(page).to have_content("Login")
    expect(page).to have_content("Create Account")
  end

  scenario "a user can enter search criteria to find a movie" do
    genre = create(:genre)

    visit root_path
    select(genre.name, :from => "Genre Select")
    click_on "Spin"

    expect(current_path).to eq movie_path(movie)
    expect(page).to have_content(genre.name)
  end
end
