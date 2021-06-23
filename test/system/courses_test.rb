require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "C age", with: @course.c_age
    fill_in "C days", with: @course.c_days
    fill_in "C desc", with: @course.c_desc
    fill_in "C detailed structure", with: @course.c_detailed_structure
    fill_in "C duration", with: @course.c_duration
    fill_in "C level", with: @course.c_level
    fill_in "C location", with: @course.c_location
    check "C mode" if @course.c_mode
    fill_in "C name", with: @course.c_name
    fill_in "C requirements", with: @course.c_requirements
    fill_in "C structure", with: @course.c_structure
    fill_in "C time", with: @course.c_time
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "C age", with: @course.c_age
    fill_in "C days", with: @course.c_days
    fill_in "C desc", with: @course.c_desc
    fill_in "C detailed structure", with: @course.c_detailed_structure
    fill_in "C duration", with: @course.c_duration
    fill_in "C level", with: @course.c_level
    fill_in "C location", with: @course.c_location
    check "C mode" if @course.c_mode
    fill_in "C name", with: @course.c_name
    fill_in "C requirements", with: @course.c_requirements
    fill_in "C structure", with: @course.c_structure
    fill_in "C time", with: @course.c_time
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
