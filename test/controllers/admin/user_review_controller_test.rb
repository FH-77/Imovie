require "test_helper"

class Admin::UserReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_user_review_index_url
    assert_response :success
  end
end
