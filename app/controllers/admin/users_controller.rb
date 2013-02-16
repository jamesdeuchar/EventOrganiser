class Admin::UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :action => "index", :notice => "User '#{@user.name}' successfully created!"
    else
      flash[:error] = "Failed to create user"
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to :action => "index" }
      format.xml  { head :ok }
    end
  end

end
