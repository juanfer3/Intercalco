class CreateTotalesFormula < ActiveRecord::Migration[5.1]
  def change
    create_table :totales_formula do |t|
      t.references :formula_tinta, foreign_key: true
      t.float :total
      t.boolean :estado

      t.timestamps
    end
  end
end
