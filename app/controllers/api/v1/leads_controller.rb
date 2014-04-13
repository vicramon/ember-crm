class Api::V1::LeadsController < ApplicationController
  respond_to :json

  def index
    respond_with Lead.all
  end

  def show
    respond_with Lead.find(params[:id])
  end

  def create
    respond_with :api, :v1, Lead.create(lead_params)
  end

  def update
    respond_with Lead.find(params[:id]).update_attributes(lead_params)
  end

  def destroy
    respond_with Lead.find(params[:id]).destroy
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :phone, :status, :notes)
  end

end
