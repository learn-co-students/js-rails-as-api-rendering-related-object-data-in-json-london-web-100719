class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: sightings, only: [:id], include: [:bird, :location]
  end
  
  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, only: [:id], include: [:bird, :location]
  end
end
