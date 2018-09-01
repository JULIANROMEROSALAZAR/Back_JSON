require 'test_helper'

class ClavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clafe = claves(:one)
  end

  test "should get index" do
    get claves_url, as: :json
    assert_response :success
  end

  test "should create clafe" do
    assert_difference('Clave.count') do
      post claves_url, params: { clafe: { clave: @clafe.clave, fecha_Creacion: @clafe.fecha_Creacion, id: @clafe.id, id_Usuario: @clafe.id_Usuario } }, as: :json
    end

    assert_response 201
  end

  test "should show clafe" do
    get clafe_url(@clafe), as: :json
    assert_response :success
  end

  test "should update clafe" do
    patch clafe_url(@clafe), params: { clafe: { clave: @clafe.clave, fecha_Creacion: @clafe.fecha_Creacion, id: @clafe.id, id_Usuario: @clafe.id_Usuario } }, as: :json
    assert_response 200
  end

  test "should destroy clafe" do
    assert_difference('Clave.count', -1) do
      delete clafe_url(@clafe), as: :json
    end

    assert_response 204
  end
end
