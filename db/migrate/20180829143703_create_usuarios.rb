class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombres, null: false
      t.string :apellidos, null: false
      t.string :correo, null: false
      t.string :telefono
      t.belongs_to :Estado, index: true, default: 5 , null: false
      t.belongs_to :Perfil, index: true, null: false
      t.integer :intentos, default: 0, null: false

      t.timestamps
    end

    #Configura por defecto super administrador
    #-- Creado por: Julián Alexander Romero Salazar
    #-- 2018-08-29
    Usuario.create  :nombres => 'Julian Alexander', :apellidos => 'Romero Salazar', :correo => 'julian_romero_salazar@outlook.es' ,:telefono => '3123821914', :Perfil_id => 1
  end
end
