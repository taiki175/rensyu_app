require 'test_helper'

class CtrlControllerTest < ActionController::TestCase
  test "should get req_head2" do
    get :req_head2
    assert_response :success
  end

end
