FactoryGirl.define do

  factory :user do
    username "zuzu"
    email "zuzu@pup-tart.com"
    password "meatball"
  end

  factory :comments do
    content "Totally rad movie dude!"
    user
  end

  factory :movie do
    title "Hellraiser"
    rating
    genre
  end

  factory :genre do
    name "Horror"
  end

  factory :rating do
    movie_rating 5
  end

end
