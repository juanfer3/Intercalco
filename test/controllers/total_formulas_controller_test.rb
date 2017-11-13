require 'test_helper'

class TotalFormulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @total_formula = total_formulas(:one)
  end

  test "should get index" do
    get total_formulas_url
    assert_response :success
  end

  test "should get new" do
    get new_total_formula_url
    assert_response :success
  end

  test "should create total_formula" do
    assert_difference('TotalFormula.count') do
      post total_formulas_url, params: { total_formula: { estado: @total_formula.estado, formula_tinta_id: @total_formula.formula_tinta_id, total: @total_formula.total } }
    end

    assert_redirected_to total_formula_url(TotalFormula.last)
  end

  test "should show total_formula" do
    get total_formula_url(@total_formula)
    assert_response :success
  end

  test "should get edit" do
    get edit_total_formula_url(@total_formula)
    assert_response :success
  end

  test "should update total_formula" do
    patch total_formula_url(@total_formula), params: { total_formula: { estado: @total_formula.estado, formula_tinta_id: @total_formula.formula_tinta_id, total: @total_formula.total } }
    assert_redirected_to total_formula_url(@total_formula)
  end

  test "should destroy total_formula" do
    assert_difference('TotalFormula.count', -1) do
      delete total_formula_url(@total_formula)
    end

    assert_redirected_to total_formulas_url
  end
end
