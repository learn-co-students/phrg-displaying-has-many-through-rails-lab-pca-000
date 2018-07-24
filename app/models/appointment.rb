# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
end
