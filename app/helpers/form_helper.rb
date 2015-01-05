module FormHelper
  def setup_plant(plant)
    plant.plant_monitors ||= PlantMonitor.new
    plant
  end
end