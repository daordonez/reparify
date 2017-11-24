require 'test_helper'

class DeviseModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devise_model = devise_models(:one)
  end

  test "should get index" do
    get devise_models_url
    assert_response :success
  end

  test "should get new" do
    get new_devise_model_url
    assert_response :success
  end

  test "should create devise_model" do
    assert_difference('DeviseModel.count') do
      post devise_models_url, params: { devise_model: { manufacturer_id: @devise_model.manufacturer_id, nombrecomercial_modelo: @devise_model.nombrecomercial_modelo } }
    end

    assert_redirected_to devise_model_url(DeviseModel.last)
  end

  test "should show devise_model" do
    get devise_model_url(@devise_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_devise_model_url(@devise_model)
    assert_response :success
  end

  test "should update devise_model" do
    patch devise_model_url(@devise_model), params: { devise_model: { manufacturer_id: @devise_model.manufacturer_id, nombrecomercial_modelo: @devise_model.nombrecomercial_modelo } }
    assert_redirected_to devise_model_url(@devise_model)
  end

  test "should destroy devise_model" do
    assert_difference('DeviseModel.count', -1) do
      delete devise_model_url(@devise_model)
    end

    assert_redirected_to devise_models_url
  end
end
