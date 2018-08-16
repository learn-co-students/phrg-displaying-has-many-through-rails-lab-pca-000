# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_appointment_time
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
