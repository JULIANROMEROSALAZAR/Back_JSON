class CreateAvances < ActiveRecord::Migration[5.2]
  def change
    create_table :avances do |t|
      t.belongs_to :Reto, index: true, null: false      
      t.integer :porcentaje, default: 0, null: false 
      t.string :evidencia
      t.binary :adjunto

      t.timestamps
    end
  end
end
