require 'test_helper'

class Admin::AgendaItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_agenda_items_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_agenda_items_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_agenda_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_agenda_items_edit_url
    assert_response :success
  end

end
