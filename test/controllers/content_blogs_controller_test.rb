require 'test_helper'

class ContentBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get content_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get content_blogs_show_url
    assert_response :success
  end

end
