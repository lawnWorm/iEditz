require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
