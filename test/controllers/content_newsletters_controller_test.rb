require 'test_helper'

class ContentNewslettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get content_newsletters_index_url
    assert_response :success
  end

  test "should get show" do
    get content_newsletters_show_url
    assert_response :success
  end

end
