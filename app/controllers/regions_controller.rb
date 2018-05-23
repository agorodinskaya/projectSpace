class RegionsController < ApplicationController
  before_action :get_region, only: [:show, :edit, :update, :destroy]

  before_action :check_if_logged_in, except: [:index, :show]


  def new
    @region = Region.new
  end

  def create
    region = Region.new region_params
    region.save

    redirect_to regions_path
  end

  def index
    @regions = Region.all
  end

  def show
    #see method described in the proivate section, and above in beforeafter.
  end

  def edit

  end

  def update
    @region.update region_params
    redirect_to regions_path
  end

  def destroy
    @region.destroy
    redirect_to regions_path
  end

  private

  def region_params
    params.require(:region).permit(:name, :image_url)

  end

  def get_region
    @region = Region.find params[:id]
  end


end
