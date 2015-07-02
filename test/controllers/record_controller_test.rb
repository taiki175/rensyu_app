require 'test_helper'

class RecordControllerTest < ActionController::TestCase
  test "should get groupby" do
    get :groupby
    assert_response :success
  end

end
