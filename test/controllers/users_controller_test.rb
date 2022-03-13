require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get prole" do
    get users_prole_url
    assert_response :success
  end
end
