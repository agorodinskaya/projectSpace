class SessionController < ApplicationController
  def new
  end

  def create

    user = User.find_by email: params[:email]
    if user.present? && user.authenticate( params[:password] )
    #correct credentials !
    #create a coockie which stores the Rails session, incl the user ID
      session[:user_id] = user.id
      redirect_to user_path( user )
    else
      #wrong credentials, unsuccessful login
      flash[:error] = "Invalid e-mail or password"
      redirect_to login_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
