class AddMovieRefToShow < ActiveRecord::Migration
  def change
    add_reference :shows, :movie, index: true
    add_foreign_key :shows, :movies
  end
end
