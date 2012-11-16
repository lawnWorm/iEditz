class PushBunniesController < ApplicationController
  protect_from_forgery

  def index
    redirect_to "show"
  end

  def show
  	@show = "Show the overview for the event."

  	render "show"
  end

  def new
    @push_bunny = PushBunny.new

  end

  def create

    @push_bunny = PushBunny.new(params[:push_bunny])

    if @push_bunny.save
      #redirect_to :controller => "PushBunnies", :action => "update"
    else
      flash[:error] = "Push Bunny was not created."
    end

  end

  def update



  end 



  

end