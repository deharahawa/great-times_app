require 'test_helper'

class ContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contato = contatos(:one)
  end

  test "should get index" do
    get contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_contato_url
    assert_response :success
  end

  test "should create contato" do
    assert_difference('Contato.count') do
      post contatos_url, params: { contato: { email_contato: @contato.email_contato, nome_contato: @contato.nome_contato, telefone: @contato.telefone, texto: @contato.texto } }
    end

    assert_redirected_to contato_url(Contato.last)
  end

  test "should show contato" do
    get contato_url(@contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_contato_url(@contato)
    assert_response :success
  end

  test "should update contato" do
    patch contato_url(@contato), params: { contato: { email_contato: @contato.email_contato, nome_contato: @contato.nome_contato, telefone: @contato.telefone, texto: @contato.texto } }
    assert_redirected_to contato_url(@contato)
  end

  test "should destroy contato" do
    assert_difference('Contato.count', -1) do
      delete contato_url(@contato)
    end

    assert_redirected_to contatos_url
  end
end
