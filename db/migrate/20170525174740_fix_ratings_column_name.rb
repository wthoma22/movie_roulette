class FixRatingsColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :scores, :movie_rating, :movie_score
  end
end
