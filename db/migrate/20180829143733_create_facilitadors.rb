class CreateFacilitadors < ActiveRecord::Migration[5.2]
  def change
    create_table :facilitadors do |t|
      t.belongs_to :Usuario, index: true, null: false   
      t.belongs_to :Universidad, index: true, null: false
      t.string :direccion, null: false
      t.binary :firmaDigital

      t.timestamps
    end
  end
end
