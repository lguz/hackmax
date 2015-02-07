class ChangeQuantityToTheaters < ActiveRecord::Migration
  def change
  	change_column :theaters, :quantity, :integer
  end
end
