#TODOs:
# add created by and updated by data one auth is implemented

class ExhibitorsController < ApplicationController

  before_filter :find_exhibitor,
    :only => [:show, :edit, :update, :destroy]

  # GET /exhibitors
  # GET /exhibitors.xml
  def index
    @exhibitors = Exhibitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exhibitors }
    end
  end

  # GET /exhibitors/1
  # GET /exhibitors/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exhibitor }
    end
  end

  # GET /exhibitors/new
  # GET /exhibitors/new.xml
  def new
    @exhibitor = Exhibitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exhibitor }
    end
  end

  # GET /exhibitors/1/edit
  def edit

  end

  # POST /exhibitors
  # POST /exhibitors.xml
  def create
    @exhibitor = Exhibitor.new(params[:exhibitor])

    respond_to do |format|
      if @exhibitor.save
        format.html { redirect_to(@exhibitor, :notice => 'Exhibitor was successfully created.') }
        format.xml  { render :xml => @exhibitor, :status => :created, :location => @exhibitor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exhibitor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exhibitors/1
  # PUT /exhibitors/1.xml
  def update

    respond_to do |format|
      if @exhibitor.update_attributes(params[:exhibitor])
        format.html { redirect_to(@exhibitor, :notice => 'Exhibitor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exhibitor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitors/1
  # DELETE /exhibitors/1.xml
  def destroy
    @exhibitor.destroy

    respond_to do |format|
      format.html { redirect_to(exhibitors_url) }
      format.xml  { head :ok }
    end
  end

  private
    def find_exhibitor
      @exhibitor = Exhibitor.find(params[:id])
    end
end
