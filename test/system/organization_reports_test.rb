require "application_system_test_case"

class OrganizationReportsTest < ApplicationSystemTestCase
  setup do
    @organization_report = organization_reports(:one)
  end

  test "visiting the index" do
    visit organization_reports_url
    assert_selector "h1", text: "Organization Reports"
  end

  test "creating a Organization report" do
    visit organization_reports_url
    click_on "New Organization Report"

    click_on "Create Organization report"

    assert_text "Organization report was successfully created"
    click_on "Back"
  end

  test "updating a Organization report" do
    visit organization_reports_url
    click_on "Edit", match: :first

    click_on "Update Organization report"

    assert_text "Organization report was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization report" do
    visit organization_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization report was successfully destroyed"
  end
end
