class RemoveStatusAndShowIdFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :status, :string
    remove_column :seats, :show_id, :integer
  end
end
