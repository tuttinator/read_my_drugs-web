class AddDoseUnitsToPrescription < ActiveRecord::Migration
  def change
    add_column :prescriptions, :dose_units, :string
  end
end
