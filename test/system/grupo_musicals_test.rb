require "application_system_test_case"

class GrupoMusicalsTest < ApplicationSystemTestCase
  setup do
    @grupo_musical = grupo_musicals(:one)
  end

  test "visiting the index" do
    visit grupo_musicals_url
    assert_selector "h1", text: "Grupo Musicals"
  end

  test "creating a Grupo musical" do
    visit grupo_musicals_url
    click_on "New Grupo Musical"

    fill_in "Biografia", with: @grupo_musical.biografia
    fill_in "Cep", with: @grupo_musical.cep
    fill_in "Cidade", with: @grupo_musical.cidade
    fill_in "Cpf", with: @grupo_musical.cpf
    fill_in "Data nascimento", with: @grupo_musical.data_nascimento
    fill_in "Email", with: @grupo_musical.email
    fill_in "Endereco", with: @grupo_musical.endereco
    fill_in "Estado", with: @grupo_musical.estado
    fill_in "Imagens", with: @grupo_musical.imagens
    fill_in "Nome", with: @grupo_musical.nome
    fill_in "Nome artistico", with: @grupo_musical.nome_artistico
    fill_in "Numero", with: @grupo_musical.numero
    fill_in "Pais", with: @grupo_musical.pais
    fill_in "Pontos", with: @grupo_musical.pontos
    fill_in "Salario hora", with: @grupo_musical.salario_hora
    fill_in "Senha", with: @grupo_musical.senha
    fill_in "Sobrenome", with: @grupo_musical.sobrenome
    fill_in "Telefone", with: @grupo_musical.telefone
    fill_in "Video", with: @grupo_musical.video
    click_on "Create Grupo musical"

    assert_text "Grupo musical was successfully created"
    click_on "Back"
  end

  test "updating a Grupo musical" do
    visit grupo_musicals_url
    click_on "Edit", match: :first

    fill_in "Biografia", with: @grupo_musical.biografia
    fill_in "Cep", with: @grupo_musical.cep
    fill_in "Cidade", with: @grupo_musical.cidade
    fill_in "Cpf", with: @grupo_musical.cpf
    fill_in "Data nascimento", with: @grupo_musical.data_nascimento
    fill_in "Email", with: @grupo_musical.email
    fill_in "Endereco", with: @grupo_musical.endereco
    fill_in "Estado", with: @grupo_musical.estado
    fill_in "Imagens", with: @grupo_musical.imagens
    fill_in "Nome", with: @grupo_musical.nome
    fill_in "Nome artistico", with: @grupo_musical.nome_artistico
    fill_in "Numero", with: @grupo_musical.numero
    fill_in "Pais", with: @grupo_musical.pais
    fill_in "Pontos", with: @grupo_musical.pontos
    fill_in "Salario hora", with: @grupo_musical.salario_hora
    fill_in "Senha", with: @grupo_musical.senha
    fill_in "Sobrenome", with: @grupo_musical.sobrenome
    fill_in "Telefone", with: @grupo_musical.telefone
    fill_in "Video", with: @grupo_musical.video
    click_on "Update Grupo musical"

    assert_text "Grupo musical was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupo musical" do
    visit grupo_musicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupo musical was successfully destroyed"
  end
end
