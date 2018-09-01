class CreateRetadors < ActiveRecord::Migration[5.2]
  def change
    create_table :retadors do |t|
      t.belongs_to :Usuario, index: true, null: false
      t.string :direccion, null: false
      t.binary :firmaDigital
      t.string :Presupuesto, default: '0', null: false 

      t.timestamps
    end
  end
end
