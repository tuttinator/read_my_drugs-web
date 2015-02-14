class PrescriptionsController < ApplicationController
  respond_to :html, :json
  before_action :set_prescription, only: [:show, :edit, :update, :destroy]

  def index
    @prescriptions = Prescription.where(deleted_at: nil)
  end

  def show
  end

  def new
    @prescription = Prescription.new
  end

  def create
    @prescription = Prescription.create(prescription_params)
    respond_with @prescription
  end

  def edit
  end

  def update
    @prescription.update(prescription_params)
    respond_with @prescription
  end

  private

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end

  def prescription_params
    params.require(:prescription).permit(:drug_name, :dose, :dose_units, :frequency, :frequency_units, :route)
  end

end
