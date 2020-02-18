require 'test_helper'

class BaseControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get base_home_url
    assert_response :success
  end

  test "should get guides" do
    get base_guides_url
    assert_response :success
  end

end
