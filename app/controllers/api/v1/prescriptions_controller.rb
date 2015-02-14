class Api::V1::PrescriptionsController < ApplicationController
  layout 'api'
  before_action :set_prescription
  respond_to :html, :json

  def show
    respond_to do |format|
      format.html do
        @text = @prescription.translator(params[:language]).translate
      end
      format.mp3 do
        @prescription.translator(params[:language]).translate
        send_data @prescription.translator(params[:language]).speak
      end
    end
  end

  private

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end
end
