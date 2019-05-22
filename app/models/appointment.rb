# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable
    datetime = appointment_datetime.to_formatted_s(:long)
    datetime.insert(-6, "at ")
  end
end
