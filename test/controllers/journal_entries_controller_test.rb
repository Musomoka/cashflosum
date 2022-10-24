require 'test_helper'

class JournalEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get Sales" do
    get journal_entries_Sales_url
    assert_response :success
  end

  test "should get Expenses" do
    get journal_entries_Expenses_url
    assert_response :success
  end

  test "should get GeneralJournal" do
    get journal_entries_GeneralJournal_url
    assert_response :success
  end

end
