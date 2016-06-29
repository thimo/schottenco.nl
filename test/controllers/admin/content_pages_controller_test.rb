require 'test_helper'

class Admin::ContentPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_content_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_content_pages_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_content_pages_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_content_pages_edit_url
    assert_response :success
  end

end
