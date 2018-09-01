require 'test_helper'

class RetadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retador = retadors(:one)
  end

  test "should get index" do
    get retadors_url, as: :json
    assert_response :success
  end

  test "should create retador" do
    assert_difference('Retador.count') do
      post retadors_url, params: { retador: { Presupuesto: @retador.Presupuesto, direccion: @retador.direccion, firmaDigital: @retador.firmaDigital, id: @retador.id, id_Usuario: @retador.id_Usuario } }, as: :json
    end

    assert_response 201
  end

  test "should show retador" do
    get retador_url(@retador), as: :json
    assert_response :success
  end

  test "should update retador" do
    patch retador_url(@retador), params: { retador: { Presupuesto: @retador.Presupuesto, direccion: @retador.direccion, firmaDigital: @retador.firmaDigital, id: @retador.id, id_Usuario: @retador.id_Usuario } }, as: :json
    assert_response 200
  end

  test "should destroy retador" do
    assert_difference('Retador.count', -1) do
      delete retador_url(@retador), as: :json
    end

    assert_response 204
  end
end
