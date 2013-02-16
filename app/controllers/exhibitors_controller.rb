class ExhibitorsController < ApplicationController

  helper_method :sort_column, :sort_direction

  before_filter :find_exhibitor,
    :only => [:show, :edit, :update, :destroy]

  def index
    @exhibitors = Exhibitor.all(:order => sort_column + " " + sort_direction).paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exhibitors }
    end
  end

  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exhibitor }
    end
  end

  def new
    @exhibitor = Exhibitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exhibitor }
    end
  end

  def edit

  end

  def create
    @exhibitor = Exhibitor.new(params[:exhibitor])
    @exhibitor.created_by = @exhibitor.updated_by = current_user.name

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

  def update

    @exhibitor.updated_by = current_user.name

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

    def sort_column
      Exhibitor.column_names.include?(params[:sort]) ? params[:sort] : "company_name"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
