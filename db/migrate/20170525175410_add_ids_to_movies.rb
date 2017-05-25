class AddIdsToMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :genre, foreign_key: true
    add_reference :movies, :score, foreign_key: true
  end
end
