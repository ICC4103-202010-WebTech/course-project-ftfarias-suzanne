require "application_system_test_case"

class OrganizationAdministratorsTest < ApplicationSystemTestCase
  setup do
    @organization_administrator = organization_administrators(:one)
  end

  test "visiting the index" do
    visit organization_administrators_url
    assert_selector "h1", text: "Organization Administrators"
  end

  test "creating a Organization administrator" do
    visit organization_administrators_url
    click_on "New Organization Administrator"

    click_on "Create Organization administrator"

    assert_text "Organization administrator was successfully created"
    click_on "Back"
  end

  test "updating a Organization administrator" do
    visit organization_administrators_url
    click_on "Edit", match: :first

    click_on "Update Organization administrator"

    assert_text "Organization administrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization administrator" do
    visit organization_administrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization administrator was successfully destroyed"
  end
end
