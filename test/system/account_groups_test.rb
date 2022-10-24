require "application_system_test_case"

class AccountGroupsTest < ApplicationSystemTestCase
  setup do
    @account_group = account_groups(:one)
  end

  test "visiting the index" do
    visit account_groups_url
    assert_selector "h1", text: "Account Groups"
  end

  test "creating a Account group" do
    visit account_groups_url
    click_on "New Account Group"

    fill_in "Account group name", with: @account_group.account_group_name
    fill_in "First number", with: @account_group.first_number
    fill_in "Last number", with: @account_group.last_number
    click_on "Create Account group"

    assert_text "Account group was successfully created"
    click_on "Back"
  end

  test "updating a Account group" do
    visit account_groups_url
    click_on "Edit", match: :first

    fill_in "Account group name", with: @account_group.account_group_name
    fill_in "First number", with: @account_group.first_number
    fill_in "Last number", with: @account_group.last_number
    click_on "Update Account group"

    assert_text "Account group was successfully updated"
    click_on "Back"
  end

  test "destroying a Account group" do
    visit account_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account group was successfully destroyed"
  end
end
