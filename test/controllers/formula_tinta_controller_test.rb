require 'test_helper'

class FormulaTintaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formula_tintum = formula_tinta(:one)
  end

  test "should get index" do
    get formula_tinta_url
    assert_response :success
  end

  test "should get new" do
    get new_formula_tintum_url
    assert_response :success
  end

  test "should create formula_tintum" do
    assert_difference('FormulaTintum.count') do
      post formula_tinta_url, params: { formula_tintum: { base_tinta_id: @formula_tintum.base_tinta_id, cantidad: @formula_tintum.cantidad, estado: @formula_tintum.estado, tinta_id: @formula_tintum.tinta_id } }
    end

    assert_redirected_to formula_tintum_url(FormulaTintum.last)
  end

  test "should show formula_tintum" do
    get formula_tintum_url(@formula_tintum)
    assert_response :success
  end

  test "should get edit" do
    get edit_formula_tintum_url(@formula_tintum)
    assert_response :success
  end

  test "should update formula_tintum" do
    patch formula_tintum_url(@formula_tintum), params: { formula_tintum: { base_tinta_id: @formula_tintum.base_tinta_id, cantidad: @formula_tintum.cantidad, estado: @formula_tintum.estado, tinta_id: @formula_tintum.tinta_id } }
    assert_redirected_to formula_tintum_url(@formula_tintum)
  end

  test "should destroy formula_tintum" do
    assert_difference('FormulaTintum.count', -1) do
      delete formula_tintum_url(@formula_tintum)
    end

    assert_redirected_to formula_tinta_url
  end
end
