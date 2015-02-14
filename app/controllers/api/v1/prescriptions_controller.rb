class Api::V1::PrescriptionsController < ApplicationController
  layout 'api'
  before_action :set_prescription
  respond_to :html, :json

  def show
    @text = @prescription.translator(params[:langauge]).translate
    respond_with @prescription
  end

  def read
    respond_to :mp3 do
      send_data @prescription.translator(params[:language]).speak
    end
  end

  private

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end
end
