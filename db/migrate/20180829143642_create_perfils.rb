class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.string :descripcion, null: false

      t.timestamps
    end
   
    #Configura por defecto todos los Perfiles
    #-- Creado por: Julián Alexander Romero Salazar
    #-- 2018-08-29
    Perfil.create :descripcion => 'Solucionador (Estudiante)'
    Perfil.create :descripcion => 'Retador (Comunidad)'
    Perfil.create :descripcion => 'Facilitador (Universidad)' 
  end
end
