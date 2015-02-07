class AddMovieIdToShows < ActiveRecord::Migration
  def change
  	add_column :shows, :movie_id, :integer
  	add_column :shows, :theater_id, :integer

  end
end
