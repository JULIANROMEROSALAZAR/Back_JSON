require 'test_helper'

class SolucionadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solucionador = solucionadors(:one)
  end

  test "should get index" do
    get solucionadors_url, as: :json
    assert_response :success
  end

  test "should create solucionador" do
    assert_difference('Solucionador.count') do
      post solucionadors_url, params: { solucionador: { id: @solucionador.id, id_Facultad: @solucionador.id_Facultad, id_Reto: @solucionador.id_Reto, id_Universidad: @solucionador.id_Universidad, id_Usuario: @solucionador.id_Usuario } }, as: :json
    end

    assert_response 201
  end

  test "should show solucionador" do
    get solucionador_url(@solucionador), as: :json
    assert_response :success
  end

  test "should update solucionador" do
    patch solucionador_url(@solucionador), params: { solucionador: { id: @solucionador.id, id_Facultad: @solucionador.id_Facultad, id_Reto: @solucionador.id_Reto, id_Universidad: @solucionador.id_Universidad, id_Usuario: @solucionador.id_Usuario } }, as: :json
    assert_response 200
  end

  test "should destroy solucionador" do
    assert_difference('Solucionador.count', -1) do
      delete solucionador_url(@solucionador), as: :json
    end

    assert_response 204
  end
end
