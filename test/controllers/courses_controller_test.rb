require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { c_age: @course.c_age, c_days: @course.c_days, c_desc: @course.c_desc, c_detailed_structure: @course.c_detailed_structure, c_duration: @course.c_duration, c_level: @course.c_level, c_location: @course.c_location, c_mode: @course.c_mode, c_name: @course.c_name, c_requirements: @course.c_requirements, c_structure: @course.c_structure, c_time: @course.c_time } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { c_age: @course.c_age, c_days: @course.c_days, c_desc: @course.c_desc, c_detailed_structure: @course.c_detailed_structure, c_duration: @course.c_duration, c_level: @course.c_level, c_location: @course.c_location, c_mode: @course.c_mode, c_name: @course.c_name, c_requirements: @course.c_requirements, c_structure: @course.c_structure, c_time: @course.c_time } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
