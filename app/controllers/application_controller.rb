class ApplicationController < ActionController::Base

  require 'will_paginate'

  before_filter :require_login

  helper :all 
  protect_from_forgery 
  filter_parameter_logging :password

  WillPaginate.per_page = APP_CONFIG["results_per_page"]

  private

    def require_login
      unless logged_in?
        logger.debug "### User not logged in - redirecting to session new"
        flash[:error] = "You must be logged in to access this section"
        redirect_to :login 
      end
    end

    def logged_in?
      logger.debug "### logged_in called"
      !!current_user
    end

    def current_user
      logger.debug "### current_user called"
      @_current_user ||= session[:user_id] &&
        User.find(session[:user_id])
    end

end
