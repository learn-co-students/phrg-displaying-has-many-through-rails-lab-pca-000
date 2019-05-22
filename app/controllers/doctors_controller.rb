# frozen_string_literal: true

class DoctorsController < ApplicationController
  def index; end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
