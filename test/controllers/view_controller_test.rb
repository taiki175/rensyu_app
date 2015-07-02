require 'test_helper'

class ViewControllerTest < ActionController::TestCase
  test "should get partial_basic" do
    get :partial_basic
    assert_response :success
  end

end
