class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions, id: :uuid do |t|
      t.string :drug_name
      t.decimal :dose
      t.string :route
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
