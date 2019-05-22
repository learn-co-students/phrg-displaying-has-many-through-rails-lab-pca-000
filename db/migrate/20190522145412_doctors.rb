# frozen_string_literal: true

class Doctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.timestamps null: false
    end
  end
end
