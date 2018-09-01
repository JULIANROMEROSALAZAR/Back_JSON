class CreateSolucionadors < ActiveRecord::Migration[5.2]
  def change
    create_table :solucionadors do |t|
      t.belongs_to :Reto, index: true, null: false
      t.belongs_to :Universidad, index: true, null: false
      t.belongs_to :Facultad, index: true, null: false
      t.belongs_to :Usuario, index: true, null: false
      
      t.timestamps
    end
  end
end
