class MoonsController < ApplicationController

  before_action :get_moon, only: [:show, :edit, :update, :destroy]

  def new
    @moon = Moon.new
  end

  def create
    moon = Moon.new moon_params
    moon.save

    redirect_to moons_path
  end

  def index
    @moons = Moon.all
  end

  def show
  end

  def edit
  end

  def update
    @moon.update moon_params
    redirect_to moons_path
  end

  def destroy
    @moon.destroy
    redirect_to moons_path
  end

  private

  def moon_params
    params.require(:moon).permit(:name, :image_url)

  end

  def get_moon
    @moon = Moon.find params[:id]
  end


end
