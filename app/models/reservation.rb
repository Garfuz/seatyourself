class Reservation < ApplicationRecord
  belongs_to :restaurant
  validate :can_make

  def can_make
    unless restaurant.has_capacity?(partysize, day, time)
      errors.add(:base, "at max capacity for hour")
    end
  end




end