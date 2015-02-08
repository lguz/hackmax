class RemoveTheaterIdFrom < ActiveRecord::Migration
  def change
  	remove_column :seats, :theater_id
  	remove_column :seats, :theather_id

  end
end
