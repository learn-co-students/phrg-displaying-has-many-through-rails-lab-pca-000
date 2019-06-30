# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      render :edit
    end
  end

  def destroy
    Appointment.find(params[:id]).destroy
    redirect_to appointments_url
  end

private

  def appointment_params
    params.require(:appointment).permit(
      :appointment_datetime,
      :patient_id,
      :doctor_id
    )
  end
end
