class TotalFormula < ApplicationRecord
  belongs_to :formula_tinta, optional: true
  
  def formulas_for_form
         collection = formula_tintas.where(articulo_id: id)
         collection.any? ? collection : formula_tintas.build
   end

end
