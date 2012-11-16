class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :user_check

  def user_check
  	puts " this user can get here."
  end
end
