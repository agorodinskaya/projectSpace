class ApplicationController < ActionController::Base
  before_action :fetch_user

  def check_if_logged_in
    unless @current_user.present?
    flash[:error] = "You must be logged in to view the profile page"
    # @user = @current_user
    redirect_to login_path
    end
  end

  private

  def fetch_user
  #Retrieve the currently - logged-in user's row from the database (if they are actually logged in)
  if session[:user_id].present?
    @current_user = User.find_by id: session[:user_id]
  end

  #Just in case we're dealing with a stale ID (i.e. ID that no longer exists in the database)
  session[:user_id] = nil unless @current_user.present?

  end

  end
