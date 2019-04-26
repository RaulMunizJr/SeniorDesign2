require 'test_helper'

class SipocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sipoc = sipocs(:one)
  end

  test "should get index" do
    get sipocs_url
    assert_response :success
  end

  test "should get new" do
    get new_sipoc_url
    assert_response :success
  end

  test "should create sipoc" do
    assert_difference('Sipoc.count') do
      post sipocs_url, params: { sipoc: {  } }
    end

    assert_redirected_to sipoc_url(Sipoc.last)
  end

  test "should show sipoc" do
    get sipoc_url(@sipoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_sipoc_url(@sipoc)
    assert_response :success
  end

  test "should update sipoc" do
    patch sipoc_url(@sipoc), params: { sipoc: {  } }
    assert_redirected_to sipoc_url(@sipoc)
  end

  test "should destroy sipoc" do
    assert_difference('Sipoc.count', -1) do
      delete sipoc_url(@sipoc)
    end

    assert_redirected_to sipocs_url
  end
end
