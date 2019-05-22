# frozen_string_literal: true

class Patients < ActiveRecord::Migration
  def change
    create_table :Patients do |t|
      t.string :name
      t.integer :age
      t.timestamps null: false
    end
  end
end
