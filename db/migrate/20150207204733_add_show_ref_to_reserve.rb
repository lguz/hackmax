class AddShowRefToReserve < ActiveRecord::Migration
  def change
    add_reference :reserves, :show, index: true
    add_foreign_key :reserves, :shows
  end
end
