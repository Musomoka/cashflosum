require "application_system_test_case"

class ChartOfAccountsTest < ApplicationSystemTestCase
  setup do
    @chart_of_account = chart_of_accounts(:one)
  end

  test "visiting the index" do
    visit chart_of_accounts_url
    assert_selector "h1", text: "Chart Of Accounts"
  end

  test "creating a Chart of account" do
    visit chart_of_accounts_url
    click_on "New Chart Of Account"

    fill_in "Account group", with: @chart_of_account.account_group_id
    fill_in "Account number", with: @chart_of_account.account_number
    click_on "Create Chart of account"

    assert_text "Chart of account was successfully created"
    click_on "Back"
  end

  test "updating a Chart of account" do
    visit chart_of_accounts_url
    click_on "Edit", match: :first

    fill_in "Account group", with: @chart_of_account.account_group_id
    fill_in "Account number", with: @chart_of_account.account_number
    click_on "Update Chart of account"

    assert_text "Chart of account was successfully updated"
    click_on "Back"
  end

  test "destroying a Chart of account" do
    visit chart_of_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chart of account was successfully destroyed"
  end
end
