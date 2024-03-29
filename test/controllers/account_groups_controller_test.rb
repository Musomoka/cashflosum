require 'test_helper'

class AccountGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_group = account_groups(:one)
  end

  test "should get index" do
    get account_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_account_group_url
    assert_response :success
  end

  test "should create account_group" do
    assert_difference('AccountGroup.count') do
      post account_groups_url, params: { account_group: { account_group_name: @account_group.account_group_name, first_number: @account_group.first_number, last_number: @account_group.last_number } }
    end

    assert_redirected_to account_group_url(AccountGroup.last)
  end

  test "should show account_group" do
    get account_group_url(@account_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_group_url(@account_group)
    assert_response :success
  end

  test "should update account_group" do
    patch account_group_url(@account_group), params: { account_group: { account_group_name: @account_group.account_group_name, first_number: @account_group.first_number, last_number: @account_group.last_number } }
    assert_redirected_to account_group_url(@account_group)
  end

  test "should destroy account_group" do
    assert_difference('AccountGroup.count', -1) do
      delete account_group_url(@account_group)
    end

    assert_redirected_to account_groups_url
  end
end
