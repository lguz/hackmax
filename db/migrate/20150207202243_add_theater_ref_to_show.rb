class AddTheaterRefToShow < ActiveRecord::Migration
  def change
    add_reference :shows, :theater, index: true
    add_foreign_key :shows, :theaters
  end
end
