class CreateClaves < ActiveRecord::Migration[5.2]
  def change
    create_table :claves do |t|
      t.belongs_to :Usuario, index: true, null: false      
      t.string :clave, null: false

      t.timestamps
    end

    Clave.create  :Usuario_id => 1, :clave => 'clavesincifrar'

  end
end
