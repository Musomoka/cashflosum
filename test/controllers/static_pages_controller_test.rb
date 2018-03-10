require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Welcome" do
    get static_pages_Welcome_url
    assert_response :success
  end

  test "should get About" do
    get static_pages_About_url
    assert_response :success
  end

  test "should get Contact" do
    get static_pages_Contact_url
    assert_response :success
  end

end
