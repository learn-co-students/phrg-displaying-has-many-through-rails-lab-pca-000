# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable
    ordinal = appointment_datetime.to_formatted_s(:long)
    ordinal.insert(-6, "at ")
  end
end
