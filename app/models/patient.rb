# frozen_string_literal: true

class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def app_count
    appointments.count
  end
end
