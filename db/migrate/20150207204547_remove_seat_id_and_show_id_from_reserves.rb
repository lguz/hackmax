class RemoveSeatIdAndShowIdFromReserves < ActiveRecord::Migration
  def change
    remove_column :reserves, :seat_id, :integer
    remove_column :reserves, :show_id, :integer
  end
end
