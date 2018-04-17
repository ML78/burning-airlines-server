# == Schema Information
#
# Table name: flights
#
#  id            :integer          not null, primary key
#  flight_number :integer
#  flight_from   :text
#  flight_to     :text
#  flight_date   :datetime
#  plane_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Flight < ApplicationRecord
  belongs_to: airplane
  has_many: reservations
  has_many: users, through: :reservations

end
