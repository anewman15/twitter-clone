require 'test_helper'

class TwiitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twiit = twiits(:one)
  end

  test "should get index" do
    get twiits_url
    assert_response :success
  end

  test "should get new" do
    get new_twiit_url
    assert_response :success
  end

  test "should create twiit" do
    assert_difference('Twiit.count') do
      post twiits_url, params: { twiit: {  } }
    end

    assert_redirected_to twiit_url(Twiit.last)
  end

  test "should show twiit" do
    get twiit_url(@twiit)
    assert_response :success
  end

  test "should get edit" do
    get edit_twiit_url(@twiit)
    assert_response :success
  end

  test "should update twiit" do
    patch twiit_url(@twiit), params: { twiit: {  } }
    assert_redirected_to twiit_url(@twiit)
  end

  test "should destroy twiit" do
    assert_difference('Twiit.count', -1) do
      delete twiit_url(@twiit)
    end

    assert_redirected_to twiits_url
  end
end
