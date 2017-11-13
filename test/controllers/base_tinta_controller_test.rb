require 'test_helper'

class BaseTintaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_tintum = base_tinta(:one)
  end

  test "should get index" do
    get base_tinta_url
    assert_response :success
  end

  test "should get new" do
    get new_base_tintum_url
    assert_response :success
  end

  test "should create base_tintum" do
    assert_difference('BaseTintum.count') do
      post base_tinta_url, params: { base_tintum: { codigo: @base_tintum.codigo, descripcion_base: @base_tintum.descripcion_base, estado: @base_tintum.estado, linea_tinta_id: @base_tintum.linea_tinta_id } }
    end

    assert_redirected_to base_tintum_url(BaseTintum.last)
  end

  test "should show base_tintum" do
    get base_tintum_url(@base_tintum)
    assert_response :success
  end

  test "should get edit" do
    get edit_base_tintum_url(@base_tintum)
    assert_response :success
  end

  test "should update base_tintum" do
    patch base_tintum_url(@base_tintum), params: { base_tintum: { codigo: @base_tintum.codigo, descripcion_base: @base_tintum.descripcion_base, estado: @base_tintum.estado, linea_tinta_id: @base_tintum.linea_tinta_id } }
    assert_redirected_to base_tintum_url(@base_tintum)
  end

  test "should destroy base_tintum" do
    assert_difference('BaseTintum.count', -1) do
      delete base_tintum_url(@base_tintum)
    end

    assert_redirected_to base_tinta_url
  end
end
