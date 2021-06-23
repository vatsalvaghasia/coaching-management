require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get page404" do
    get errors_page404_url
    assert_response :success
  end
end
