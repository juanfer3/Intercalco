require 'test_helper'

class LineaTintaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_tintum = linea_tinta(:one)
  end

  test "should get index" do
    get linea_tinta_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_tintum_url
    assert_response :success
  end

  test "should create linea_tintum" do
    assert_difference('LineaTintum.count') do
      post linea_tinta_url, params: { linea_tintum: { caracteristica: @linea_tintum.caracteristica, estado: @linea_tintum.estado, tipo_de_linea: @linea_tintum.tipo_de_linea } }
    end

    assert_redirected_to linea_tintum_url(LineaTintum.last)
  end

  test "should show linea_tintum" do
    get linea_tintum_url(@linea_tintum)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_tintum_url(@linea_tintum)
    assert_response :success
  end

  test "should update linea_tintum" do
    patch linea_tintum_url(@linea_tintum), params: { linea_tintum: { caracteristica: @linea_tintum.caracteristica, estado: @linea_tintum.estado, tipo_de_linea: @linea_tintum.tipo_de_linea } }
    assert_redirected_to linea_tintum_url(@linea_tintum)
  end

  test "should destroy linea_tintum" do
    assert_difference('LineaTintum.count', -1) do
      delete linea_tintum_url(@linea_tintum)
    end

    assert_redirected_to linea_tinta_url
  end
end
