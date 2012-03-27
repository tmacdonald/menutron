class MeasurementsController < ApplicationController

  respond_to :json, :xml

  def index
    @measurements = Measurement.all
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

end
