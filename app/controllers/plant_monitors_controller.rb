class PlantMonitorsController < ApplicationController
  def index
  end
  def show
  end
  def new
  end
  def create
    @plant = Plant.find(session[:plant_id])
    @plant_monitor = @plant.plant_monitors.new(pm_params)
    @plant_monitor.save
    redirect_to @plant
  end
  def edit
  end
  def update
  end
  def destroy
  end

private

  def pm_params
    params.require(:plant_monitor).permit(:date,
                                          :plant_height,
                                          :water_ph,
                                          :tds_reading,
                                          :comment)
  end
end
