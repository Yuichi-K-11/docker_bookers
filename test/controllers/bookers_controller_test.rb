require 'test_helper'

class BookersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booker = bookers(:one)
  end

  test "should get index" do
    get bookers_url
    assert_response :success
  end

  test "should get new" do
    get new_booker_url
    assert_response :success
  end

  test "should create booker" do
    assert_difference('Booker.count') do
      post bookers_url, params: { booker: { body: @booker.body, title: @booker.title } }
    end

    assert_redirected_to booker_url(Booker.last)
  end

  test "should show booker" do
    get booker_url(@booker)
    assert_response :success
  end

  test "should get edit" do
    get edit_booker_url(@booker)
    assert_response :success
  end

  test "should update booker" do
    patch booker_url(@booker), params: { booker: { body: @booker.body, title: @booker.title } }
    assert_redirected_to booker_url(@booker)
  end

  test "should destroy booker" do
    assert_difference('Booker.count', -1) do
      delete booker_url(@booker)
    end

    assert_redirected_to bookers_url
  end
end
