require "application_system_test_case"

class TotalReportTest < ApplicationSystemTestCase
  setup do
    @total_report = total_report(:one)
  end

  test "visiting the index" do
    visit total_report_url
    assert_selector "h1", text: "Total Report"
  end

  test "creating a Total report" do
    visit total_report_url
    click_on "New Total Report"

    click_on "Create Total report"

    assert_text "Total report was successfully created"
    click_on "Back"
  end

  test "updating a Total report" do
    visit total_report_url
    click_on "Edit", match: :first

    click_on "Update Total report"

    assert_text "Total report was successfully updated"
    click_on "Back"
  end

  test "destroying a Total report" do
    visit total_report_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Total report was successfully destroyed"
  end
end
