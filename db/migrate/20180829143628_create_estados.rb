class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :descripcion, null: false

      t.timestamps
    end

    #Configura por defecto todos los estados
    #-- Creado por: Julián Alexander Romero Salazar
    #-- 2018-08-29
    Estado.create :descripcion => 'Inicial'     #1
    Estado.create :descripcion => 'Desarrollo'  #2
    Estado.create :descripcion => 'Aprobación'  #3
    Estado.create :descripcion => 'Vencido'     #4
    Estado.create :descripcion => 'Activo'      #5
    Estado.create :descripcion => 'Inactivo'    #6

  end
end
