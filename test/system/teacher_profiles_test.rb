require "application_system_test_case"

class TeacherProfilesTest < ApplicationSystemTestCase
  setup do
    @teacher_profile = teacher_profiles(:one)
  end

  test "visiting the index" do
    visit teacher_profiles_url
    assert_selector "h1", text: "Teacher Profiles"
  end

  test "creating a Teacher profile" do
    visit teacher_profiles_url
    click_on "New Teacher Profile"

    fill_in "Email", with: @teacher_profile.email
    fill_in "Experience", with: @teacher_profile.experience
    check "Mode to teach" if @teacher_profile.mode_to_teach
    fill_in "Name", with: @teacher_profile.name
    fill_in "Subject", with: @teacher_profile.subject
    click_on "Create Teacher profile"

    assert_text "Teacher profile was successfully created"
    click_on "Back"
  end

  test "updating a Teacher profile" do
    visit teacher_profiles_url
    click_on "Edit", match: :first

    fill_in "Email", with: @teacher_profile.email
    fill_in "Experience", with: @teacher_profile.experience
    check "Mode to teach" if @teacher_profile.mode_to_teach
    fill_in "Name", with: @teacher_profile.name
    fill_in "Subject", with: @teacher_profile.subject
    click_on "Update Teacher profile"

    assert_text "Teacher profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher profile" do
    visit teacher_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher profile was successfully destroyed"
  end
end
