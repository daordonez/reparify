require 'test_helper'

class MintestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mintest = mintests(:one)
  end

  test "should get index" do
    get mintests_url
    assert_response :success
  end

  test "should get new" do
    get new_mintest_url
    assert_response :success
  end

  test "should create mintest" do
    assert_difference('Mintest.count') do
      post mintests_url, params: { mintest: { descripcion: @mintest.descripcion, nombre: @mintest.nombre } }
    end

    assert_redirected_to mintest_url(Mintest.last)
  end

  test "should show mintest" do
    get mintest_url(@mintest)
    assert_response :success
  end

  test "should get edit" do
    get edit_mintest_url(@mintest)
    assert_response :success
  end

  test "should update mintest" do
    patch mintest_url(@mintest), params: { mintest: { descripcion: @mintest.descripcion, nombre: @mintest.nombre } }
    assert_redirected_to mintest_url(@mintest)
  end

  test "should destroy mintest" do
    assert_difference('Mintest.count', -1) do
      delete mintest_url(@mintest)
    end

    assert_redirected_to mintests_url
  end
end
