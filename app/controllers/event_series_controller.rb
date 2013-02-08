class EventSeriesController < ApplicationController

  before_filter :find_event_series,
    :only => [:show, :edit, :update, :destroy]

  def index
    @event_series = EventSeries.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  def new
    @event_series = EventSeries.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  def edit
  end

  def create
    @event_series = EventSeries.new(params[:event_series])

    respond_to do |format|
      if @event_series.save
        format.html { redirect_to(@event_series, :notice => 'EventSeries was successfully created.') }
        format.xml  { render :xml => @event_series, :status => :created, :location => @event_series }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event_series.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event_series.update_attributes(params[:event_series])
        format.html { redirect_to(@event_series, :notice => 'EventSeries was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event_series.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @event_series.destroy

    respond_to do |format|
      format.html { redirect_to(event_series_url) }
      format.xml  { head :ok }
    end
  end

  private
    def find_event_series
      @event_series = Event_Series.find(params[:id])
    end

end
