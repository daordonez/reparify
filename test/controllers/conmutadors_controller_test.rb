require 'test_helper'

class ConmutadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conmutador = conmutadors(:one)
  end

  test "should get index" do
    get conmutadors_url
    assert_response :success
  end

  test "should get new" do
    get new_conmutador_url
    assert_response :success
  end

  test "should create conmutador" do
    assert_difference('Conmutador.count') do
      post conmutadors_url, params: { conmutador: {  } }
    end

    assert_redirected_to conmutador_url(Conmutador.last)
  end

  test "should show conmutador" do
    get conmutador_url(@conmutador)
    assert_response :success
  end

  test "should get edit" do
    get edit_conmutador_url(@conmutador)
    assert_response :success
  end

  test "should update conmutador" do
    patch conmutador_url(@conmutador), params: { conmutador: {  } }
    assert_redirected_to conmutador_url(@conmutador)
  end

  test "should destroy conmutador" do
    assert_difference('Conmutador.count', -1) do
      delete conmutador_url(@conmutador)
    end

    assert_redirected_to conmutadors_url
  end
end
