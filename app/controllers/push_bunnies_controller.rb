class PushBunniesController < ApplicationController
  protect_from_forgery

  def index
    redirect_to "show"
  end

  def show
  	@show = "Show the overview for the event."

  	render "show"
  end

  def create
    
  end  


  

end