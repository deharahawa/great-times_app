require 'test_helper'

class NegociacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negociacao = negociacaos(:one)
  end

  test "should get index" do
    get negociacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_negociacao_url
    assert_response :success
  end

  test "should create negociacao" do
    assert_difference('Negociacao.count') do
      post negociacaos_url, params: { negociacao: { salario_combinado: @negociacao.salario_combinado, status_negociacao: @negociacao.status_negociacao } }
    end

    assert_redirected_to negociacao_url(Negociacao.last)
  end

  test "should show negociacao" do
    get negociacao_url(@negociacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_negociacao_url(@negociacao)
    assert_response :success
  end

  test "should update negociacao" do
    patch negociacao_url(@negociacao), params: { negociacao: { salario_combinado: @negociacao.salario_combinado, status_negociacao: @negociacao.status_negociacao } }
    assert_redirected_to negociacao_url(@negociacao)
  end

  test "should destroy negociacao" do
    assert_difference('Negociacao.count', -1) do
      delete negociacao_url(@negociacao)
    end

    assert_redirected_to negociacaos_url
  end
end
