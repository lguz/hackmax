class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.time :time_show
      t.date :date_show

      t.timestamps null: false
    end
  end
end
