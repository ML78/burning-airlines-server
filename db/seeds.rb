# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "airplanes", force: :cascade do |t|
#   t.text "name"
#   t.integer "rows"
#   t.integer "columns"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "flights", force: :cascade do |t|
#   t.integer "flight_number"
#   t.text "flight_from"
#   t.text "flight_to"
#   t.datetime "flight_date"
#   t.integer "plane_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

Airplane.destroy_all
a1 = Airplane.create(:name => 'Sydney Airlines', :rows => 5, :columns => 5)
a2 = Airplane.create(:name => 'Scoot Airlines', :rows => 10, :columns => 10)
a3 = Airplane.create(:name => 'Melbourne Airlines', :rows => 20, :columns => 20)
a4 = Airplane.create(:name => 'Brisbane Airlines', :rows => 15, :columns => 15)
a5 = Airplane.create(:name => 'Australias Airlines', :rows => 10, :columns => 10)


Flight.destroy_all
f1 = Flight.create(:flight_number => 2000, :flight_from => 'Sydney', :flight_to => 'Melbourne', :flight_date => '20')
f2 = Flight.create(:flight_number => 3400, :flight_from => 'Melbourne', :flight_to => 'Brisbane', :flight_date => '30')
f3 = Flight.create(:flight_number => 2400, :flight_from => 'Brisbane', :flight_to => 'Adeliade', :flight_date => '12')
f4 = Flight.create(:flight_number => 1230, :flight_from => 'Sydney', :flight_to => 'Queensland', :flight_date => '4')
f5 = Flight.create(:flight_number => 4560, :flight_from => 'Melbourne', :flight_to => 'Adeliade', :flight_date => '13')
f6 = Flight.create(:flight_number => 3746, :flight_from => 'Brisbane', :flight_to => 'Melbourne', :flight_date => '6')

a1.flights << f1
a2.flights << f2
