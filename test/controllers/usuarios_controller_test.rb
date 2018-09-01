require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url, as: :json
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { apellidos: @usuario.apellidos, correo: @usuario.correo, fecha_Creacion: @usuario.fecha_Creacion, id: @usuario.id, id_Estado: @usuario.id_Estado, id_Perfil: @usuario.id_Perfil, intentos: @usuario.intentos, nombres: @usuario.nombres, telefono: @usuario.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario" do
    get usuario_url(@usuario), as: :json
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { apellidos: @usuario.apellidos, correo: @usuario.correo, fecha_Creacion: @usuario.fecha_Creacion, id: @usuario.id, id_Estado: @usuario.id_Estado, id_Perfil: @usuario.id_Perfil, intentos: @usuario.intentos, nombres: @usuario.nombres, telefono: @usuario.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario), as: :json
    end

    assert_response 204
  end
end
