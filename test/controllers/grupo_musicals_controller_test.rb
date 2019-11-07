require 'test_helper'

class GrupoMusicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_musical = grupo_musicals(:one)
  end

  test "should get index" do
    get grupo_musicals_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_musical_url
    assert_response :success
  end

  test "should create grupo_musical" do
    assert_difference('GrupoMusical.count') do
      post grupo_musicals_url, params: { grupo_musical: { biografia: @grupo_musical.biografia, cep: @grupo_musical.cep, cidade: @grupo_musical.cidade, cpf: @grupo_musical.cpf, data_nascimento: @grupo_musical.data_nascimento, email: @grupo_musical.email, endereco: @grupo_musical.endereco, estado: @grupo_musical.estado, imagens: @grupo_musical.imagens, nome: @grupo_musical.nome, nome_artistico: @grupo_musical.nome_artistico, numero: @grupo_musical.numero, pais: @grupo_musical.pais, pontos: @grupo_musical.pontos, salario_hora: @grupo_musical.salario_hora, senha: @grupo_musical.senha, sobrenome: @grupo_musical.sobrenome, telefone: @grupo_musical.telefone, video: @grupo_musical.video } }
    end

    assert_redirected_to grupo_musical_url(GrupoMusical.last)
  end

  test "should show grupo_musical" do
    get grupo_musical_url(@grupo_musical)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_musical_url(@grupo_musical)
    assert_response :success
  end

  test "should update grupo_musical" do
    patch grupo_musical_url(@grupo_musical), params: { grupo_musical: { biografia: @grupo_musical.biografia, cep: @grupo_musical.cep, cidade: @grupo_musical.cidade, cpf: @grupo_musical.cpf, data_nascimento: @grupo_musical.data_nascimento, email: @grupo_musical.email, endereco: @grupo_musical.endereco, estado: @grupo_musical.estado, imagens: @grupo_musical.imagens, nome: @grupo_musical.nome, nome_artistico: @grupo_musical.nome_artistico, numero: @grupo_musical.numero, pais: @grupo_musical.pais, pontos: @grupo_musical.pontos, salario_hora: @grupo_musical.salario_hora, senha: @grupo_musical.senha, sobrenome: @grupo_musical.sobrenome, telefone: @grupo_musical.telefone, video: @grupo_musical.video } }
    assert_redirected_to grupo_musical_url(@grupo_musical)
  end

  test "should destroy grupo_musical" do
    assert_difference('GrupoMusical.count', -1) do
      delete grupo_musical_url(@grupo_musical)
    end

    assert_redirected_to grupo_musicals_url
  end

  test 'should block login whithout data' do
    get '/login',
    params: { email: "a@c", senha: "asd" }
    assert_equal "Falha de login.", flash[:alert]
  end

  test 'should block login whith wrong password' do
    get '/login',
    params: { email: @grupo_musical.email, senha: "asd" }
    assert_equal "Falha de login.", flash[:alert]
  end
  
  test 'should block login whith wrong email' do
    get '/login',
    params: { email: "a@c", senha: @grupo_musical.senha }
    assert_equal "Falha de login.", flash[:alert]
  end

  test 'should permit login' do
    get '/login',
    params: { email: @grupo_musical.email, senha: @grupo_musical.senha }
    assert_equal "Logado com sucesso.", flash[:notice]
  end  
end
