class PlanetsController < ApplicationController

  before_action :get_planet, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new planet_params
    planet.save

    redirect_to planets_path
  end

  def index
    @planets = Planet.all
  end

  def show
  end

  def edit
  end

  def update
    @planet.update planet_params
    redirect_to planets_path
  end

  def destroy
    @planet.destroy
    redirect_to planets_path
  end


  private

  def planet_params
    params.require(:planet).permit(:name, :image_url)

  end

  def get_planet
    @planet = Planet.find params[:id]
  end


end
