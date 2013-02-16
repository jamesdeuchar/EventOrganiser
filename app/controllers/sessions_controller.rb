class SessionsController < ApplicationController

  skip_before_filter :require_login, :only => [:new, :create,]

  # Returns login form
  def new
  end

  # Creates user session from psoted login form data
  def create

    logger.debug "### Processing new login details"
    user = User.authenticate(params[:email], params[:password])

    if user

      logger.debug "### Login details matched - creating login session"
      session[:user_id] = user.id
      flash[:notice] = "Logged in!"
      redirect_to :controller => "home", :action => "index"

    else

      logger.debug "### User details didn't match - login denied"
      flash[:error] = "Invalid email or password"
      render "new"
    end

  end

  def destroy
    logger.debug "### Logging user out"
    session[:user_id] = nil
    redirect_to :login
  end

end
