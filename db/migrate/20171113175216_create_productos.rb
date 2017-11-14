class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :caracteristica
      t.boolean :estado, default(true)

      t.timestamps
    end
  end
end
