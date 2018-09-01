class CreateFacultads < ActiveRecord::Migration[5.2]
  def change
    create_table :facultads do |t|
      t.belongs_to :Universidad, index: true, null: false
      t.string :descripcion, null: false

      t.timestamps
    end

    #Configura por defecto todas las universidades
    #-- Creado por: Julián Alexander Romero Salazar
    #-- 2018-08-29
    #Universidad.create :descripcion => 'Universidad Libre de Colombia'        #1
    Facultad.create  :Universidad_id => 1, :descripcion => 'Derecho'
    Facultad.create  :Universidad_id => 1, :descripcion => 'Ciencias de la Educación'
    Facultad.create  :Universidad_id => 1, :descripcion => 'Ciencias Económicas'
    Facultad.create  :Universidad_id => 1, :descripcion => 'Filosofía'
    Facultad.create  :Universidad_id => 1, :descripcion => 'Ingeniería'
 

    #Universidad.create :descripcion => 'Universidad de La Salle'              #2
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias Administrativas y Contables'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias Agropecuarias'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias Económicas y Sociales'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ingeniería'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias de la Educación'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias del Hábitat'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias de la Salud'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Filosofía y Humanidades'
    Facultad.create  :Universidad_id => 2, :descripcion => 'Ciencias Básicas'
    

    #Universidad.create :descripcion => 'Universidad del Rosario'              #3
    Facultad.create  :Universidad_id => 3, :descripcion => 'Escuela de Medicina y Ciencias de la Salud'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Escuela de Ciencias Humanas'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Escuela de Administración'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Facultad de Economía'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Facultad de Ciencias Naturales y Matemáticas'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Facultad de Ciencia Política, Gobierno y Relaciones Internacionales'
    Facultad.create  :Universidad_id => 3, :descripcion => 'Facultad de Jurisprudencia'


    #Universidad.create :descripcion => 'Universidad Externado de Colombia'    #4
    Facultad.create  :Universidad_id => 4, :descripcion => 'Administración de Empresas'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Hoteleria y turismo'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Ciencias de la Educación'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Ciencias Sociales y Humanas'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Comunicación Social - Periodismo'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Contaduría Pública'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Decanatura Cultural'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Derecho'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Economía'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Estudios del Patrimonio Cultural'
    Facultad.create  :Universidad_id => 4, :descripcion => 'Finanzas, Gobierno y Relaciones Imternacionales'


    #Universidad.create :descripcion => 'Corporación Unificada Nacional CUN'   #5
    Facultad.create  :Universidad_id => 5, :descripcion => 'Escuela de Ciencias Administrativas'
    Facultad.create  :Universidad_id => 5, :descripcion => 'Escuela de Comunicación y Bellas Artes'
    Facultad.create  :Universidad_id => 5, :descripcion => 'Escuela de Ingeniería'

    #Universidad.create :descripcion => 'Liceo Julio Cesar Garcia'             #6
    Facultad.create  :Universidad_id => 6, :descripcion => 'Arquitectura'
    Facultad.create  :Universidad_id => 6, :descripcion => 'Ciencias de la Educación'
    Facultad.create  :Universidad_id => 6, :descripcion => 'Ciencias Económicas, Administrativas y Contables'
    Facultad.create  :Universidad_id => 6, :descripcion => 'Derecho y Ciencias Políticas Sociales'
    Facultad.create  :Universidad_id => 6, :descripcion => 'Ingeniería Civil'

  end
end
