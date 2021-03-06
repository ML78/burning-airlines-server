# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  admin      :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :reservations
  has_many :flights, through: :reservations

  validates :name, :presence => true
end
