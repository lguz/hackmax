class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :seat_id
      t.integer :show_id

      t.timestamps null: false
    end
  end
end
