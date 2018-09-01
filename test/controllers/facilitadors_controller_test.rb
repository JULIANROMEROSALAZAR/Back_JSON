require 'test_helper'

class FacilitadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facilitador = facilitadors(:one)
  end

  test "should get index" do
    get facilitadors_url, as: :json
    assert_response :success
  end

  test "should create facilitador" do
    assert_difference('Facilitador.count') do
      post facilitadors_url, params: { facilitador: { direccion: @facilitador.direccion, firmaDigital: @facilitador.firmaDigital, id: @facilitador.id, id_Universidad: @facilitador.id_Universidad, id_Usuario: @facilitador.id_Usuario } }, as: :json
    end

    assert_response 201
  end

  test "should show facilitador" do
    get facilitador_url(@facilitador), as: :json
    assert_response :success
  end

  test "should update facilitador" do
    patch facilitador_url(@facilitador), params: { facilitador: { direccion: @facilitador.direccion, firmaDigital: @facilitador.firmaDigital, id: @facilitador.id, id_Universidad: @facilitador.id_Universidad, id_Usuario: @facilitador.id_Usuario } }, as: :json
    assert_response 200
  end

  test "should destroy facilitador" do
    assert_difference('Facilitador.count', -1) do
      delete facilitador_url(@facilitador), as: :json
    end

    assert_response 204
  end
end
