class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :id, :nombres, :apellidos, :correo, :telefono, :id_Estado, :intentos, :id_Perfil, :fecha_Creacion
end
