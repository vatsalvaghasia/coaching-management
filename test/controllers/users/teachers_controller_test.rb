require "test_helper"

class Users::TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_teachers_index_url
    assert_response :success
  end
end
