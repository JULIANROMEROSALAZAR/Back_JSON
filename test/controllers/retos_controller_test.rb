require 'test_helper'

class RetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reto = retos(:one)
  end

  test "should get index" do
    get retos_url, as: :json
    assert_response :success
  end

  test "should create reto" do
    assert_difference('Reto.count') do
      post retos_url, params: { reto: { descripcion: @reto.descripcion, fecha_Creacion: @reto.fecha_Creacion, fecha_Finalizacion: @reto.fecha_Finalizacion, id: @reto.id, id_Estado: @reto.id_Estado, id_Retador: @reto.id_Retador } }, as: :json
    end

    assert_response 201
  end

  test "should show reto" do
    get reto_url(@reto), as: :json
    assert_response :success
  end

  test "should update reto" do
    patch reto_url(@reto), params: { reto: { descripcion: @reto.descripcion, fecha_Creacion: @reto.fecha_Creacion, fecha_Finalizacion: @reto.fecha_Finalizacion, id: @reto.id, id_Estado: @reto.id_Estado, id_Retador: @reto.id_Retador } }, as: :json
    assert_response 200
  end

  test "should destroy reto" do
    assert_difference('Reto.count', -1) do
      delete reto_url(@reto), as: :json
    end

    assert_response 204
  end
end
