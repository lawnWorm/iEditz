class UsersController < ApplicationController
 
  
  def new
    @user = User.new

    @new_user_test = ab_test("new_user", 'testa', 'testb', 'testc')

  end

  def create

    @user = User.new(params[:user])

    respond_to do |format|
      format.html
      format.json { render :json => @user }
    end

    # if @user.save
    #   redirect_to :controller => "users", :id => @user.id , :action => "show"
    # else
    #   error[:flash] = "error saving user"
    # end
    
  end

  def show

    @user = User.find_by_id(params[:id])
    
    finished('new_user')

  end

end
