class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.belongs_to :Acance, index: true, null: false      
      t.string :descripcion, null: false
      t.belongs_to :Usuario, index: true, null: false

      t.timestamps
    end
  end
end
