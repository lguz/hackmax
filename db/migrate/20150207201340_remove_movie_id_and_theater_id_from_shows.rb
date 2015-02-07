class RemoveMovieIdAndTheaterIdFromShows < ActiveRecord::Migration
  def change
    remove_column :shows, :movie_id, :integer
    remove_column :shows, :theater_id, :integer
  end
end
