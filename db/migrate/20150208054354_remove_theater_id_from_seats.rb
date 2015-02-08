class RemoveTheaterIdFromSeats < ActiveRecord::Migration
  def change
  	remove_index :seat, name: :theater_id
  end
end
