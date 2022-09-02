require "test_helper"

class Api::BillboardControllerTest < ActionDispatch::IntegrationTest
  test "should get skip-routes" do
    get api_billboard_skip-routes_url
    assert_response :success
  end
end
