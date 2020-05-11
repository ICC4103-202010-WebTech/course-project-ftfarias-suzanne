require 'test_helper'

class OrganizationAdministratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_administrator = organization_administrators(:one)
  end

  test "should get index" do
    get organization_administrators_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_administrator_url
    assert_response :success
  end

  test "should create organization_administrator" do
    assert_difference('OrganizationAdministrator.count') do
      post organization_administrators_url, params: { organization_administrator: {  } }
    end

    assert_redirected_to organization_administrator_url(OrganizationAdministrator.last)
  end

  test "should show organization_administrator" do
    get organization_administrator_url(@organization_administrator)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_administrator_url(@organization_administrator)
    assert_response :success
  end

  test "should update organization_administrator" do
    patch organization_administrator_url(@organization_administrator), params: { organization_administrator: {  } }
    assert_redirected_to organization_administrator_url(@organization_administrator)
  end

  test "should destroy organization_administrator" do
    assert_difference('OrganizationAdministrator.count', -1) do
      delete organization_administrator_url(@organization_administrator)
    end

    assert_redirected_to organization_administrators_url
  end
end
