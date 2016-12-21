class TrainingsController < ApplicationController
  def create
    Training.create(date:training_params[:date], menu:training_params[:menu])
  end
end

private
  def training_params
    params.permit(:date, :menu)
