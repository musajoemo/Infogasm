require 'test_helper'

class GetUserArticlesControllerTest < ActionController::TestCase
  test "should get nokogiri_grab" do
    get :nokogiri_grab
    assert_response :success
  end

end
