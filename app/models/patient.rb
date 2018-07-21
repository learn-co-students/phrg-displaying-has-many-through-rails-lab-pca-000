# frozen_string_literal: true

class Patient < ActiveRecord::Base
  has_many :doctors, through: :appointments
  has_many :appointments
end
