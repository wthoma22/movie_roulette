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
    score
    genre
  end

  factory :genre do
    name "Horror"
  end

  factory :score do
    movie_score 5
  end

end
