class AddDeletedAtToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :deleted_at, :timestamp
  end
end
