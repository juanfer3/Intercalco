require 'test_helper'

class TintaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tintum = tinta(:one)
  end

  test "should get index" do
    get tinta_url
    assert_response :success
  end

  test "should get new" do
    get new_tintum_url
    assert_response :success
  end

  test "should create tintum" do
    assert_difference('Tintum.count') do
      post tinta_url, params: { tintum: { cantida: @tintum.cantida, codigo: @tintum.codigo, estado: @tintum.estado, malla_id: @tintum.malla_id, pantone: @tintum.pantone, producto_id: @tintum.producto_id, tipo_de_unidad: @tintum.tipo_de_unidad } }
    end

    assert_redirected_to tintum_url(Tintum.last)
  end

  test "should show tintum" do
    get tintum_url(@tintum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tintum_url(@tintum)
    assert_response :success
  end

  test "should update tintum" do
    patch tintum_url(@tintum), params: { tintum: { cantida: @tintum.cantida, codigo: @tintum.codigo, estado: @tintum.estado, malla_id: @tintum.malla_id, pantone: @tintum.pantone, producto_id: @tintum.producto_id, tipo_de_unidad: @tintum.tipo_de_unidad } }
    assert_redirected_to tintum_url(@tintum)
  end

  test "should destroy tintum" do
    assert_difference('Tintum.count', -1) do
      delete tintum_url(@tintum)
    end

    assert_redirected_to tinta_url
  end
end
