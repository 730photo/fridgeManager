require 'test_helper'

class FridgesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fridges_index_url
    assert_response :success
  end

  test "should get show" do
    get fridges_show_url
    assert_response :success
  end

  test "should get new" do
    get fridges_new_url
    assert_response :success
  end

  test "should get edit" do
    get fridges_edit_url
    assert_response :success
  end

end
