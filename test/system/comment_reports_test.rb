require "application_system_test_case"

class CommentReportsTest < ApplicationSystemTestCase
  setup do
    @comment_report = comment_reports(:one)
  end

  test "visiting the index" do
    visit comment_reports_url
    assert_selector "h1", text: "Comment Reports"
  end

  test "creating a Comment report" do
    visit comment_reports_url
    click_on "New Comment Report"

    click_on "Create Comment report"

    assert_text "Comment report was successfully created"
    click_on "Back"
  end

  test "updating a Comment report" do
    visit comment_reports_url
    click_on "Edit", match: :first

    click_on "Update Comment report"

    assert_text "Comment report was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment report" do
    visit comment_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment report was successfully destroyed"
  end
end
