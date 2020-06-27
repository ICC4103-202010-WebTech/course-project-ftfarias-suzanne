require 'test_helper'

class OrganizationReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_report = organization_reports(:one)
  end

  test "should get index" do
    get organization_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_report_url
    assert_response :success
  end

  test "should create organization_report" do
    assert_difference('OrganizationReport.count') do
      post organization_reports_url, params: { organization_report: {  } }
    end

    assert_redirected_to organization_report_url(OrganizationReport.last)
  end

  test "should show organization_report" do
    get organization_report_url(@organization_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_report_url(@organization_report)
    assert_response :success
  end

  test "should update organization_report" do
    patch organization_report_url(@organization_report), params: { organization_report: {  } }
    assert_redirected_to organization_report_url(@organization_report)
  end

  test "should destroy organization_report" do
    assert_difference('OrganizationReport.count', -1) do
      delete organization_report_url(@organization_report)
    end

    assert_redirected_to organization_reports_url
  end
end
