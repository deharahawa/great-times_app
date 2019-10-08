require 'test_helper'

class RedesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rede = redes(:one)
  end

  test "should get index" do
    get redes_url
    assert_response :success
  end

  test "should get new" do
    get new_rede_url
    assert_response :success
  end

  test "should create rede" do
    assert_difference('Rede.count') do
      post redes_url, params: { rede: { nome_rede: @rede.nome_rede } }
    end

    assert_redirected_to rede_url(Rede.last)
  end

  test "should show rede" do
    get rede_url(@rede)
    assert_response :success
  end

  test "should get edit" do
    get edit_rede_url(@rede)
    assert_response :success
  end

  test "should update rede" do
    patch rede_url(@rede), params: { rede: { nome_rede: @rede.nome_rede } }
    assert_redirected_to rede_url(@rede)
  end

  test "should destroy rede" do
    assert_difference('Rede.count', -1) do
      delete rede_url(@rede)
    end

    assert_redirected_to redes_url
  end
end
