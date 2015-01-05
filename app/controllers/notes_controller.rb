class NotesController < ApplicationController
  def index
  end
  def show
  end
  def new
  end
  def create
    @plant = Plant.find(session[:plant_id])
    @plant_monitor = @plant.notes.new(note_params)
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

  def note_params
    params.require(:note).permit(:date, :comment)
  end
end
