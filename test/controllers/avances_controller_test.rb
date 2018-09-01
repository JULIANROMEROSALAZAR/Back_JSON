require 'test_helper'

class AvancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avance = avances(:one)
  end

  test "should get index" do
    get avances_url, as: :json
    assert_response :success
  end

  test "should create avance" do
    assert_difference('Avance.count') do
      post avances_url, params: { avance: { adjunto: @avance.adjunto, evidencia: @avance.evidencia, id: @avance.id, id_Reto: @avance.id_Reto, porcentaje: @avance.porcentaje } }, as: :json
    end

    assert_response 201
  end

  test "should show avance" do
    get avance_url(@avance), as: :json
    assert_response :success
  end

  test "should update avance" do
    patch avance_url(@avance), params: { avance: { adjunto: @avance.adjunto, evidencia: @avance.evidencia, id: @avance.id, id_Reto: @avance.id_Reto, porcentaje: @avance.porcentaje } }, as: :json
    assert_response 200
  end

  test "should destroy avance" do
    assert_difference('Avance.count', -1) do
      delete avance_url(@avance), as: :json
    end

    assert_response 204
  end
end
