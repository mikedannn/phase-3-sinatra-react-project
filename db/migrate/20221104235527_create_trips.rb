class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :destination_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :trip_notes
    end
  end
end
