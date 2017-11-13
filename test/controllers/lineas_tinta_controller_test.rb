require 'test_helper'

class LineasTintaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_tinta = lineas_tinta(:one)
  end

  test "should get index" do
    get lineas_tinta_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_tinta_url
    assert_response :success
  end

  test "should create linea_tinta" do
    assert_difference('LineaTinta.count') do
      post lineas_tinta_url, params: { linea_tinta: { caracteristica: @linea_tinta.caracteristica, estado: @linea_tinta.estado, tipo_de_linea: @linea_tinta.tipo_de_linea } }
    end

    assert_redirected_to linea_tinta_url(LineaTinta.last)
  end

  test "should show linea_tinta" do
    get linea_tinta_url(@linea_tinta)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_tinta_url(@linea_tinta)
    assert_response :success
  end

  test "should update linea_tinta" do
    patch linea_tinta_url(@linea_tinta), params: { linea_tinta: { caracteristica: @linea_tinta.caracteristica, estado: @linea_tinta.estado, tipo_de_linea: @linea_tinta.tipo_de_linea } }
    assert_redirected_to linea_tinta_url(@linea_tinta)
  end

  test "should destroy linea_tinta" do
    assert_difference('LineaTinta.count', -1) do
      delete linea_tinta_url(@linea_tinta)
    end

    assert_redirected_to lineas_tinta_url
  end
end
