class AddSeatRefToReserve < ActiveRecord::Migration
  def change
    add_reference :reserves, :seat, index: true
    add_foreign_key :reserves, :seats
  end
end
