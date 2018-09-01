class CreateUniversidads < ActiveRecord::Migration[5.2]
  def change
    create_table :universidads do |t|
      t.string :descripcion, null: false

      t.timestamps
    end

    #Configura por defecto todas las universidades
    #-- Creado por: Julián Alexander Romero Salazar
    #-- 2018-08-29
    Universidad.create :descripcion => 'Universidad Libre de Colombia'        #1
    Universidad.create :descripcion => 'Universidad de La Salle'              #2
    Universidad.create :descripcion => 'Universidad del Rosario'              #3
    Universidad.create :descripcion => 'Universidad Externado de Colombia'    #4
    Universidad.create :descripcion => 'Corporación Unificada Nacional CUN'   #5
    Universidad.create :descripcion => 'Liceo Julio Cesar Garcia'             #6

  end
end
