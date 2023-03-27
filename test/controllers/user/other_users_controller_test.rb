require "test_helper"

class User::OtherUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_other_users_show_url
    assert_response :success
  end
end
