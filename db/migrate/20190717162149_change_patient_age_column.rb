# frozen_string_literal: true

class ChangePatientAgeColumn < ActiveRecord::Migration
  def change
    change_column :patients, :age, :integer
  end
end
