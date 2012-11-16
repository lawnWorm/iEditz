class DeveloperOlympiadController < ActionController::Base
  protect_from_forgery

  before_filter :user_check


  def index
    redirect_to "show"
  end

  def show
  	@show = "Show the overview for the event."

  	render "show"
  end

  def current_event
    @current_event = Events.last

  end

  def user_check

  end

end