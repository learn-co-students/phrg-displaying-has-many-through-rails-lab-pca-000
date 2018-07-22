# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime

      t.timestamps null: false
    end
  end
end
