require 'test_helper'

class EventControllerTest < ActionController::TestCase
  test "should get current_event" do
    get :current_event
    assert_response :success
  end

end
