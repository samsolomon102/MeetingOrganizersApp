require "application_system_test_case"

class MeetingOrganizerListsTest < ApplicationSystemTestCase
  setup do
    @meeting_organizer_list = meeting_organizer_lists(:one)
  end

  test "visiting the index" do
    visit meeting_organizer_lists_url
    assert_selector "h1", text: "Meeting organizer lists"
  end

  test "should create meeting organizer list" do
    visit meeting_organizer_lists_url
    click_on "New meeting organizer list"

    fill_in "Email", with: @meeting_organizer_list.email_id
    fill_in "Employee", with: @meeting_organizer_list.employee_id
    fill_in "First name", with: @meeting_organizer_list.first_name
    fill_in "Last name", with: @meeting_organizer_list.last_name
    fill_in "Last used", with: @meeting_organizer_list.last_used
    click_on "Create Meeting organizer list"

    assert_text "Meeting organizer list was successfully created"
    click_on "Back"
  end

  test "should update Meeting organizer list" do
    visit meeting_organizer_list_url(@meeting_organizer_list)
    click_on "Edit this meeting organizer list", match: :first

    fill_in "Email", with: @meeting_organizer_list.email_id
    fill_in "Employee", with: @meeting_organizer_list.employee_id
    fill_in "First name", with: @meeting_organizer_list.first_name
    fill_in "Last name", with: @meeting_organizer_list.last_name
    fill_in "Last used", with: @meeting_organizer_list.last_used
    click_on "Update Meeting organizer list"

    assert_text "Meeting organizer list was successfully updated"
    click_on "Back"
  end

  test "should destroy Meeting organizer list" do
    visit meeting_organizer_list_url(@meeting_organizer_list)
    click_on "Destroy this meeting organizer list", match: :first

    assert_text "Meeting organizer list was successfully destroyed"
  end
end
