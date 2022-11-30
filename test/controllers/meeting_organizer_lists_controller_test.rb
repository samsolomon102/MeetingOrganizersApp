require "test_helper"

class MeetingOrganizerListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_organizer_list = meeting_organizer_lists(:one)
  end

  test "should get index" do
    get meeting_organizer_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_organizer_list_url
    assert_response :success
  end

  test "should create meeting_organizer_list" do
    assert_difference("MeetingOrganizerList.count") do
      post meeting_organizer_lists_url, params: { meeting_organizer_list: { email_id: @meeting_organizer_list.email_id, employee_id: @meeting_organizer_list.employee_id, first_name: @meeting_organizer_list.first_name, last_name: @meeting_organizer_list.last_name, last_used: @meeting_organizer_list.last_used } }
    end

    assert_redirected_to meeting_organizer_list_url(MeetingOrganizerList.last)
  end

  test "should show meeting_organizer_list" do
    get meeting_organizer_list_url(@meeting_organizer_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_organizer_list_url(@meeting_organizer_list)
    assert_response :success
  end

  test "should update meeting_organizer_list" do
    patch meeting_organizer_list_url(@meeting_organizer_list), params: { meeting_organizer_list: { email_id: @meeting_organizer_list.email_id, employee_id: @meeting_organizer_list.employee_id, first_name: @meeting_organizer_list.first_name, last_name: @meeting_organizer_list.last_name, last_used: @meeting_organizer_list.last_used } }
    assert_redirected_to meeting_organizer_list_url(@meeting_organizer_list)
  end

  test "should destroy meeting_organizer_list" do
    assert_difference("MeetingOrganizerList.count", -1) do
      delete meeting_organizer_list_url(@meeting_organizer_list)
    end

    assert_redirected_to meeting_organizer_lists_url
  end
end
