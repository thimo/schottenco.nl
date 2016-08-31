require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registrations_new_url
    assert_response :success
  end

  test "should get show" do
    get registrations_show_url
    assert_response :success
  end

end
