require 'test_helper'

class BicyclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bicycle_index_url
    assert_response :success
  end

  test "should get show" do
    get bicycle_show_url
    assert_response :success
  end

  test "should get new" do
    get bicycle_new_url
    assert_response :success
  end

  test "should get create" do
    get bicycle_create_url
    assert_response :success
  end

  test "should get edit" do
    get bicycle_edit_url
    assert_response :success
  end

  test "should get update" do
    get bicycle_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bicycle_destroy_url
    assert_response :success
  end

end
