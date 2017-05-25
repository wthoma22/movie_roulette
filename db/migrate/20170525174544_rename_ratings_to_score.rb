class RenameRatingsToScore < ActiveRecord::Migration[5.1]
  def change
    rename_table :ratings, :scores
  end
end
