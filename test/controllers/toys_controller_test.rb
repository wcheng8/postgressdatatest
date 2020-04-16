require 'test_helper'

class ToysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toys_index_url
    assert_response :success
  end

  test "should get home" do
    get toys_home_url
    assert_response :success
  end

end
