class Movie < ApplicationRecord
  belongs_to :score
  belongs_to :genre
  has_many :comments
end
