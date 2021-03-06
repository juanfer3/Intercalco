class CreateBaseTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :base_tintas do |t|
      t.string :codigo
      t.references :linea_tinta, foreign_key: true
      t.text :descripcion_base
      t.boolean :estado, default(true)

      t.timestamps
    end
  end
end
