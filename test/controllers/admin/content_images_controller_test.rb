require 'test_helper'

class Admin::ContentImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_content_images_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_content_images_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_content_images_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_content_images_new_url
    assert_response :success
  end

end
