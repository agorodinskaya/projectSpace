class PlanetsController < ApplicationController

  before_action :get_planet, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new planet_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      planet.image_url = req["public id"]
    end
    planet.save

    redirect_to planets_path
  end

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
  end

  def update
    planet = Planet.find(params[:id])
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      planet.image_url = req["public id"]
    end
    planet.update_attributes(planet_params)
    planet.save
    redirect_to planets_path
  end

  def destroy
    @planet.destroy
    redirect_to planets_path
  end


  private

  def planet_params
    params.require(:planet).permit(:name)

  end

  def get_planet
    @planet = Planet.find params[:id]
  end


end
