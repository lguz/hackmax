class AddQuantityToTheaters < ActiveRecord::Migration
  def change
  	add_column :theaters, :quantity, :float
  end
end
