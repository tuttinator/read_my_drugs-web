class Prescription < ActiveRecord::Base
  validates :drug_name, :dose, :frequency, presence: true
end
