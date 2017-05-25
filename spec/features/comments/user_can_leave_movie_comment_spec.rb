require 'rails_helper'

RSpec.describe "User can create a comment" do
  scenario "a user can create a comment on a movie's page" do
    movie = create(:movie)
    user = create(:user)

    visit movie_path(movie)

    fill_in "comment[content]", with: "*DOUBLE ROCK HAND EMOJI*"
    click_on "Create Comment"
    save_and_open_page
    expect(current_path).to eq movie_path(movie)
    expect(page).to have_content("*DOUBLE ROCK HAND EMOJI*")
    expect(page).to have_content(user.username)
  end
end
