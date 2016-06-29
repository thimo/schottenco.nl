require 'test_helper'

class Admin::ContentNewslettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_content_newsletters_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_content_newsletters_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_content_newsletters_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_content_newsletters_edit_url
    assert_response :success
  end

end
