class AddFrequencyUnitsToPrescription < ActiveRecord::Migration
  def change
    add_column :prescriptions, :frequency_units, :string
  end
end
