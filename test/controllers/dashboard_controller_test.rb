require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get track" do
    get :track
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end
