class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.text :flight_number
      t.text :flight_from
      t.text :flight_to
      t.datetime :flight_date
      t.integer :airplane_id

      t.timestamps
    end
  end
end
