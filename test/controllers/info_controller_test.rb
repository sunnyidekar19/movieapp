require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get infomovie" do
    get :infomovie
    assert_response :success
  end

  test "should get infoimdb" do
    get :infoimdb
    assert_response :success
  end

end
