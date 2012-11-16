class EventsController < ApplicationController
  
  def index
  	
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
  	@event = Event.new
  end

  def create

  	@event = Event.new(params[:event])

  	if @event.save
	    redirect_to :controller => "events", :action => "show"
  	else
  	  flash[:error] = "Event was not created."
  	end

  end


  def current_event
  	@event = Event.last

  	if @event.nil?
  	  redirect_to :controller => "events", :action => "new"
  	end

  end

end
