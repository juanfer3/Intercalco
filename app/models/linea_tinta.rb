class LineaTinta < ApplicationRecord
    has_many :base_tintas , inverse_of: :linea_tinta, dependent: :destroy
  accepts_nested_attributes_for :base_tintas, reject_if: :all_blank, allow_destroy: true
end
