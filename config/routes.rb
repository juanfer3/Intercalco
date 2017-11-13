Rails.application.routes.draw do
  resources :totales_formula
  resources :formula_tintas
  resources :base_tintas
  resources :tintas
  resources :mallas
  resources :lineas_tinta
  resources :productos
  resources :base_tinta
  resources :tinta
  resources :linea_tinta
  resources :total_formulas
  resources :formula_tinta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
