require 'test_helper'

class EatOutsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get eat_outs_create_url
    assert_response :success
  end

  test "should get show" do
    get eat_outs_show_url
    assert_response :success
  end

end
