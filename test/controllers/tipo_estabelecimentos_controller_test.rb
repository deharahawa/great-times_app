require 'test_helper'

class TipoEstabelecimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_estabelecimento = tipo_estabelecimentos(:one)
  end

  test "should get index" do
    get tipo_estabelecimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_estabelecimento_url
    assert_response :success
  end

  test "should create tipo_estabelecimento" do
    assert_difference('TipoEstabelecimento.count') do
      post tipo_estabelecimentos_url, params: { tipo_estabelecimento: { nome_tipo: @tipo_estabelecimento.nome_tipo } }
    end

    assert_redirected_to tipo_estabelecimento_url(TipoEstabelecimento.last)
  end

  test "should show tipo_estabelecimento" do
    get tipo_estabelecimento_url(@tipo_estabelecimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_estabelecimento_url(@tipo_estabelecimento)
    assert_response :success
  end

  test "should update tipo_estabelecimento" do
    patch tipo_estabelecimento_url(@tipo_estabelecimento), params: { tipo_estabelecimento: { nome_tipo: @tipo_estabelecimento.nome_tipo } }
    assert_redirected_to tipo_estabelecimento_url(@tipo_estabelecimento)
  end

  test "should destroy tipo_estabelecimento" do
    assert_difference('TipoEstabelecimento.count', -1) do
      delete tipo_estabelecimento_url(@tipo_estabelecimento)
    end

    assert_redirected_to tipo_estabelecimentos_url
  end
end
