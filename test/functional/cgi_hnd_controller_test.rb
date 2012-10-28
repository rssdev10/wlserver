require 'test_helper'

class CgiHndControllerTest < ActionController::TestCase
  test "should get run" do
    get :run
    assert_response :success
  end

end
