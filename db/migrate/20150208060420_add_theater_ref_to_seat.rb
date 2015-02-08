class AddTheaterRefToSeat < ActiveRecord::Migration
  def change
    add_reference :seats, :theater, index: true
    add_foreign_key :seats, :theaters
  end
end
