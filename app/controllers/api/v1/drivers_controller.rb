class Api::V1::DriversController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user
  end

  def update
    current_user.update(drive_params)
    render json: current_user
  end


  private

  def driver_params
    params[:drive].permit(
      :first_name, :last_name,
      :license_plate_number, :zipcode,
      :city, :state, :drivers_license_number,
      :car_type, :car_make, :car_model, :car_year,
      :driver_photo, :car_photo)
  end
end