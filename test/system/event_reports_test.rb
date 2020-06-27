require "application_system_test_case"

class EventReportsTest < ApplicationSystemTestCase
  setup do
    @event_report = event_reports(:one)
  end

  test "visiting the index" do
    visit event_reports_url
    assert_selector "h1", text: "Event Reports"
  end

  test "creating a Event report" do
    visit event_reports_url
    click_on "New Event Report"

    click_on "Create Event report"

    assert_text "Event report was successfully created"
    click_on "Back"
  end

  test "updating a Event report" do
    visit event_reports_url
    click_on "Edit", match: :first

    click_on "Update Event report"

    assert_text "Event report was successfully updated"
    click_on "Back"
  end

  test "destroying a Event report" do
    visit event_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event report was successfully destroyed"
  end
end
