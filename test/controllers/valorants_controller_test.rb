require "test_helper"

class ValorantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get valorants_index_url
    assert_response :success
  end

  test "should get show" do
    get valorants_show_url
    assert_response :success
  end

  test "should get new" do
    get valorants_new_url
    assert_response :success
  end

  test "should get edit" do
    get valorants_edit_url
    assert_response :success
  end
end
