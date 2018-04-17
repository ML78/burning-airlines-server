class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.text :flight_from
      t.text :flight_to
      t.datetime :flight_date
      t.integer :plane_id

      t.timestamps
    end
  end
end
