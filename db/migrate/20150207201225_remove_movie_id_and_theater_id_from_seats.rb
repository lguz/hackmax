class RemoveMovieIdAndTheaterIdFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :movie_id, :integer
    remove_column :seats, :theater_id, :integer
  end
end
