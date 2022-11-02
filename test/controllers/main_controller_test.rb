require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get box" do
    get main_box_url
    assert_response :success
  end

  test "should get xob" do
    get main_xob_url
    assert_response :success
  end
end
