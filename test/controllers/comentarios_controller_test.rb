require 'test_helper'

class ComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentario = comentarios(:one)
  end

  test "should get index" do
    get comentarios_url, as: :json
    assert_response :success
  end

  test "should create comentario" do
    assert_difference('Comentario.count') do
      post comentarios_url, params: { comentario: { descripcion: @comentario.descripcion, id: @comentario.id, id_Avance: @comentario.id_Avance, id_Usuario: @comentario.id_Usuario } }, as: :json
    end

    assert_response 201
  end

  test "should show comentario" do
    get comentario_url(@comentario), as: :json
    assert_response :success
  end

  test "should update comentario" do
    patch comentario_url(@comentario), params: { comentario: { descripcion: @comentario.descripcion, id: @comentario.id, id_Avance: @comentario.id_Avance, id_Usuario: @comentario.id_Usuario } }, as: :json
    assert_response 200
  end

  test "should destroy comentario" do
    assert_difference('Comentario.count', -1) do
      delete comentario_url(@comentario), as: :json
    end

    assert_response 204
  end
end
