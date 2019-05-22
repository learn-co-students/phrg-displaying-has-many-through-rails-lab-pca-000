# frozen_string_literal: true

class PatientsController < ActionController::Base
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
