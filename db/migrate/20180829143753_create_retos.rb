class CreateRetos < ActiveRecord::Migration[5.2]
  def change
    create_table :retos do |t|
      t.belongs_to :Retador, index: true, null: false
      t.string :descripcion, null: false
      t.belongs_to :Estado, index: true, default: 1, null: false 
      t.datetime :fecha_Inicio, null: true
      t.datetime :fecha_Finaliza, null: true

      t.timestamps
    end
  end
end
