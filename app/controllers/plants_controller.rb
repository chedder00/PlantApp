class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end
  
  def show
    @plant = Plant.find(params[:id])
    session[:plant_id] = @plant.id
    @pms = @plant.plant_monitors.all
    @plant_monitor = @plant.plant_monitors.build
    @nte = @plant.notes.all
    @note = @plant.notes.build
  end
  
  def new
    @plant = Plant.new
  end
  
  def create
    @plant = Plant.new(plant_params)
    if(@plant.save)
      redirect_to @plant
    else
      render 'new'
    end
  end
  
  def edit
    @plant = Plant.find(params[:id])
  end
  
  def update
    @plant = Plant.find(params[:id])
    if(@plant.update(plant_params))
      redirect_to @plant
    else
      render 'edit'
    end
  end
  
  def destroy
    Plant.find(params[:id]).destroy
    redirect_to root_url
  end
  
private

  def plant_params
    params.require(:plant).permit(:strain, 
                                  :serial_number, 
                                  :clone, 
                                  :harvested)
  end
end
