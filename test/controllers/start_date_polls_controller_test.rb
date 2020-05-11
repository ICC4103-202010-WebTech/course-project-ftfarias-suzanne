require 'test_helper'

class StartDatePollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_date_poll = start_date_polls(:one)
  end

  test "should get index" do
    get start_date_polls_url
    assert_response :success
  end

  test "should get new" do
    get new_start_date_poll_url
    assert_response :success
  end

  test "should create start_date_poll" do
    assert_difference('StartDatePoll.count') do
      post start_date_polls_url, params: { start_date_poll: {  } }
    end

    assert_redirected_to start_date_poll_url(StartDatePoll.last)
  end

  test "should show start_date_poll" do
    get start_date_poll_url(@start_date_poll)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_date_poll_url(@start_date_poll)
    assert_response :success
  end

  test "should update start_date_poll" do
    patch start_date_poll_url(@start_date_poll), params: { start_date_poll: {  } }
    assert_redirected_to start_date_poll_url(@start_date_poll)
  end

  test "should destroy start_date_poll" do
    assert_difference('StartDatePoll.count', -1) do
      delete start_date_poll_url(@start_date_poll)
    end

    assert_redirected_to start_date_polls_url
  end
end
