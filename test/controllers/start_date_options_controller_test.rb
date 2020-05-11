require 'test_helper'

class StartDateOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_date_option = start_date_options(:one)
  end

  test "should get index" do
    get start_date_options_url
    assert_response :success
  end

  test "should get new" do
    get new_start_date_option_url
    assert_response :success
  end

  test "should create start_date_option" do
    assert_difference('StartDateOption.count') do
      post start_date_options_url, params: { start_date_option: {  } }
    end

    assert_redirected_to start_date_option_url(StartDateOption.last)
  end

  test "should show start_date_option" do
    get start_date_option_url(@start_date_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_date_option_url(@start_date_option)
    assert_response :success
  end

  test "should update start_date_option" do
    patch start_date_option_url(@start_date_option), params: { start_date_option: {  } }
    assert_redirected_to start_date_option_url(@start_date_option)
  end

  test "should destroy start_date_option" do
    assert_difference('StartDateOption.count', -1) do
      delete start_date_option_url(@start_date_option)
    end

    assert_redirected_to start_date_options_url
  end
end
