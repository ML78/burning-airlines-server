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
a1 = Airplane.create(:name => 'Airbus A100', :rows => 5, :columns => 5)
a2 = Airplane.create(:name => 'Airbus A200', :rows => 10, :columns => 10)
a3 = Airplane.create(:name => 'Airbus A300', :rows => 20, :columns => 20)
a4 = Airplane.create(:name => 'Airbus A400', :rows => 15, :columns => 15)
a5 = Airplane.create(:name => 'Airbus A500', :rows => 10, :columns => 10)
a6 = Airplane.create(:name => 'Airbus A600', :rows => 10, :columns => 10)


Flight.destroy_all
f1 = Flight.create(:flight_number => '2000', :flight_from => 'Sydney', :flight_to => 'Melbourne', :flight_date => '20')
f2 = Flight.create(:flight_number => '3400', :flight_from => 'Melbourne', :flight_to => 'Brisbane', :flight_date => '30')
f3 = Flight.create(:flight_number => '2400', :flight_from => 'Brisbane', :flight_to => 'Adelaide', :flight_date => '12')
f4 = Flight.create(:flight_number => '1230', :flight_from => 'Sydney', :flight_to => 'Perth', :flight_date => '25')
f5 = Flight.create(:flight_number => '4560', :flight_from => 'Melbourne', :flight_to => 'Adelaide', :flight_date => '13')
f6 = Flight.create(:flight_number => '3746', :flight_from => 'Sydney', :flight_to => 'Hobart', :flight_date => '28')

User.destroy_all
u1 = User.create :name => 'Admin', :admin => true

a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
a5.flights << f5
a6.flights << f6
