require 'test_helper'

class ContentNewsItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get content_news_items_index_url
    assert_response :success
  end

  test "should get show" do
    get content_news_items_show_url
    assert_response :success
  end

end
