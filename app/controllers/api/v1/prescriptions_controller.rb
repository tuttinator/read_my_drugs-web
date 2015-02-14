class Api::V1::PrescriptionsController < ApplicationController
  layout 'api'
  before_action :set_prescription
  respond_to :html, :json

  def show
    respond_with @prescription
  end

  def enlarge
  end

  def read
    # Something google api-y
  end

  private

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end
end
