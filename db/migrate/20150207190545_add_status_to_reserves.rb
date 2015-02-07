class AddStatusToReserves < ActiveRecord::Migration
  def change
  	add_column :reserves, :status, :string
  end
end
