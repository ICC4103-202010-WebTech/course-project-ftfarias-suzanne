require 'test_helper'

class TotalReportControllerTest < ActionDispatch::IntegrationTest
  setup do
    @total_report = total_report(:one)
  end

  test "should get index" do
    get total_report_index_url
    assert_response :success
  end

  test "should get new" do
    get new_total_report_url
    assert_response :success
  end

  test "should create total_report" do
    assert_difference('TotalReport.count') do
      post total_report_index_url, params: { total_report: {  } }
    end

    assert_redirected_to total_report_url(TotalReport.last)
  end

  test "should show total_report" do
    get total_report_url(@total_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_total_report_url(@total_report)
    assert_response :success
  end

  test "should update total_report" do
    patch total_report_url(@total_report), params: { total_report: {  } }
    assert_redirected_to total_report_url(@total_report)
  end

  test "should destroy total_report" do
    assert_difference('TotalReport.count', -1) do
      delete total_report_url(@total_report)
    end

    assert_redirected_to total_report_index_url
  end
end
