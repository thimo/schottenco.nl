require 'test_helper'

class Admin::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_registrations_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_registrations_show_url
    assert_response :success
  end

end
