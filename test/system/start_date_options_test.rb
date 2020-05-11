require "application_system_test_case"

class StartDateOptionsTest < ApplicationSystemTestCase
  setup do
    @start_date_option = start_date_options(:one)
  end

  test "visiting the index" do
    visit start_date_options_url
    assert_selector "h1", text: "Start Date Options"
  end

  test "creating a Start date option" do
    visit start_date_options_url
    click_on "New Start Date Option"

    click_on "Create Start date option"

    assert_text "Start date option was successfully created"
    click_on "Back"
  end

  test "updating a Start date option" do
    visit start_date_options_url
    click_on "Edit", match: :first

    click_on "Update Start date option"

    assert_text "Start date option was successfully updated"
    click_on "Back"
  end

  test "destroying a Start date option" do
    visit start_date_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Start date option was successfully destroyed"
  end
end
