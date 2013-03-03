class EventsController < ApplicationController

  helper_method :sort_column, :sort_direction

  before_filter :find_event,
    :only => [:show, :edit, :update, :destroy]

  def index
    @per_page = params[:per_page] || APP_CONFIG['results_per_page']
    @events = Event.all(:order => sort_column + " " + sort_direction) \
                           .paginate(:page => params[:page], :per_page => params[:per_page] )

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
      format.xls
    end
  end

  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  def edit

  end

  def create
    @event = Event.new(params[:event])
    @event.created_by = @event.updated_by = current_user.name

    respond_to do |format|
      if @event.save
        format.html { redirect_to(@event, :notice => 'Event was successfully created.') }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update

    @event.updated_by = current_user.name

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(@event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end

  private

    def find_event
      @event = Event.find(params[:id])
    end

    def sort_column
      Event.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
