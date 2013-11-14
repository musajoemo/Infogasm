require 'test_helper'

class ReadControllerTest < ActionController::TestCase
  test "should get play" do
    get :play
    assert_response :success
  end

  test "should get pause" do
    get :pause
    assert_response :success
  end

  test "should get rewind" do
    get :rewind
    assert_response :success
  end

  test "should get speed_select" do
    get :speed_select
    assert_response :success
  end

end
