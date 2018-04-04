require 'test_helper'

class CabinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cabins_index_url
    assert_response :success
  end

  test "should get show" do
    get cabins_show_url
    assert_response :success
  end

  test "should get new" do
    get cabins_new_url
    assert_response :success
  end

  test "should get create" do
    get cabins_create_url
    assert_response :success
  end

  test "should get edit" do
    get cabins_edit_url
    assert_response :success
  end

  test "should get update" do
    get cabins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cabins_destroy_url
    assert_response :success
  end

end
