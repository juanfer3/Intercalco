class FormulaTinta < ApplicationRecord
  belongs_to :tinta
  belongs_to :base_tinta
  
  has_many :totales_formula , inverse_of: :formula_tinta, dependent: :destroy
  accepts_nested_attributes_for :totales_formula, reject_if: :all_blank, allow_destroy: true
  
end
