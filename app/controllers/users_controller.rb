class UsersController < ApplicationController

  before_action :check_if_logged_in, only: [:profile, :show ]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params) # look in private section Doormain

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.image_url = req["public_id"]
    end
    #save before validation

    user.save

    if user.persisted?
      session[:user_id] = user.id
      redirect_to user_path( user.id )
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end

  end

  def show
    @user = User.find params[:id]

  end

  def profile
    @user = @current_user
    render :show

  end

  def edit
  end

  def update
    user = User.find(params[:id])
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.image_url = req["public_id"]
    end
    user.save
    redirect_to profile_path
  end

  def destroy
  end

  private
  # Doormain
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :user_type)
  end
end
