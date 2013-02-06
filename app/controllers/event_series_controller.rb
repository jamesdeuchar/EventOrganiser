class EventSeriesController < ApplicationController
  # GET /event_series
  # GET /event_series.xml
  def index
    @event_series = EventSeries.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  # GET /event_series/1
  # GET /event_series/1.xml
  def show
    @event_series = EventSeries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  # GET /event_series/new
  # GET /event_series/new.xml
  def new
    @event_series = EventSeries.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event_series }
    end
  end

  # GET /event_series/1/edit
  def edit
    @event_series = EventSeries.find(params[:id])
  end

  # POST /event_series
  # POST /event_series.xml
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

  # PUT /event_series/1
  # PUT /event_series/1.xml
  def update
    @event_series = EventSeries.find(params[:id])

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

  # DELETE /event_series/1
  # DELETE /event_series/1.xml
  def destroy
    @event_series = EventSeries.find(params[:id])
    @event_series.destroy

    respond_to do |format|
      format.html { redirect_to(event_series_url) }
      format.xml  { head :ok }
    end
  end
end
