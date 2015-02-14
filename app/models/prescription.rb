class Prescription < ActiveRecord::Base
  validates :drug_name, :dose, :dose_units, :frequency, :frequency_units, presence: true

  def qr_code
    @qr_code ||= RQRCode::QRCode.new(self.id, size: 5, level: :h)
  end

  def base64_qr_code
    Base64.encode64(qr_code.to_img.resize(200, 200).to_s)
  end
end
