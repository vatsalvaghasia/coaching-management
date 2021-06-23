require "test_helper"

class TeacherProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_profile = teacher_profiles(:one)
  end

  test "should get index" do
    get teacher_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_profile_url
    assert_response :success
  end

  test "should create teacher_profile" do
    assert_difference('TeacherProfile.count') do
      post teacher_profiles_url, params: { teacher_profile: { email: @teacher_profile.email, experience: @teacher_profile.experience, mode_to_teach: @teacher_profile.mode_to_teach, name: @teacher_profile.name, subject: @teacher_profile.subject } }
    end

    assert_redirected_to teacher_profile_url(TeacherProfile.last)
  end

  test "should show teacher_profile" do
    get teacher_profile_url(@teacher_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_profile_url(@teacher_profile)
    assert_response :success
  end

  test "should update teacher_profile" do
    patch teacher_profile_url(@teacher_profile), params: { teacher_profile: { email: @teacher_profile.email, experience: @teacher_profile.experience, mode_to_teach: @teacher_profile.mode_to_teach, name: @teacher_profile.name, subject: @teacher_profile.subject } }
    assert_redirected_to teacher_profile_url(@teacher_profile)
  end

  test "should destroy teacher_profile" do
    assert_difference('TeacherProfile.count', -1) do
      delete teacher_profile_url(@teacher_profile)
    end

    assert_redirected_to teacher_profiles_url
  end
end
