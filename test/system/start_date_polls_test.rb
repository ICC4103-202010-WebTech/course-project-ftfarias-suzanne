require "application_system_test_case"

class StartDatePollsTest < ApplicationSystemTestCase
  setup do
    @start_date_poll = start_date_polls(:one)
  end

  test "visiting the index" do
    visit start_date_polls_url
    assert_selector "h1", text: "Start Date Polls"
  end

  test "creating a Start date poll" do
    visit start_date_polls_url
    click_on "New Start Date Poll"

    click_on "Create Start date poll"

    assert_text "Start date poll was successfully created"
    click_on "Back"
  end

  test "updating a Start date poll" do
    visit start_date_polls_url
    click_on "Edit", match: :first

    click_on "Update Start date poll"

    assert_text "Start date poll was successfully updated"
    click_on "Back"
  end

  test "destroying a Start date poll" do
    visit start_date_polls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Start date poll was successfully destroyed"
  end
end
