class CreateLineasTinta < ActiveRecord::Migration[5.1]
  def change
    create_table :lineas_tinta do |t|
      t.string :tipo_de_linea
      t.string :caracteristica
      t.boolean :estado

      t.timestamps
    end
  end
end
