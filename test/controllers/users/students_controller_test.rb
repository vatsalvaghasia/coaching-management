require "test_helper"

class Users::StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_students_index_url
    assert_response :success
  end
end
