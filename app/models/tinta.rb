class Tinta < ApplicationRecord
  belongs_to :malla
  belongs_to :producto
  
  has_many :formula_tintas , inverse_of: :tinta, dependent: :destroy
  accepts_nested_attributes_for :formula_tintas, reject_if: :all_blank, allow_destroy: true
  
  
   def formulas_for_form
         collection = formula_tintas.where(tinta_id: id)
         collection.any? ? collection : formula_tintas.build
   end
   
end
