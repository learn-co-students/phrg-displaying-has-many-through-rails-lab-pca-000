# frozen_string_literal: true

class AppointmentsController < ActionController::Base
  def show
    @appointment = Appointment.find(params[:id])
  end
end
