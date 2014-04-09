require 'test_helper'

class CardControllerTest < ActionController::TestCase
  test "should get cotd" do
    get :cotd
    assert_response :success
  end

end
