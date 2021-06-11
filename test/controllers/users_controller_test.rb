require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get teacher" do
    get users_teacher_url
    assert_response :success
  end

  test "should get index" do
    get users_index_url
    assert_response :success
  end
end
