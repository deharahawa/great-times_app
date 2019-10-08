require "application_system_test_case"

class EstabelecimentosTest < ApplicationSystemTestCase
  setup do
    @estabelecimento = estabelecimentos(:one)
  end

  test "visiting the index" do
    visit estabelecimentos_url
    assert_selector "h1", text: "Estabelecimentos"
  end

  test "creating a Estabelecimento" do
    visit estabelecimentos_url
    click_on "New Estabelecimento"

    fill_in "Capacidade", with: @estabelecimento.capacidade
    fill_in "Cidade", with: @estabelecimento.cidade
    fill_in "Cnpj", with: @estabelecimento.cnpj
    fill_in "Descricao", with: @estabelecimento.descricao
    fill_in "Email", with: @estabelecimento.email
    fill_in "Endereco", with: @estabelecimento.endereco
    fill_in "Estado", with: @estabelecimento.estado
    fill_in "Imagem", with: @estabelecimento.imagem
    fill_in "Nome", with: @estabelecimento.nome
    fill_in "Nome proprietario", with: @estabelecimento.nome_proprietario
    fill_in "Numero", with: @estabelecimento.numero
    fill_in "Pais", with: @estabelecimento.pais
    fill_in "Senha", with: @estabelecimento.senha
    fill_in "Telefone", with: @estabelecimento.telefone
    click_on "Create Estabelecimento"

    assert_text "Estabelecimento was successfully created"
    click_on "Back"
  end

  test "updating a Estabelecimento" do
    visit estabelecimentos_url
    click_on "Edit", match: :first

    fill_in "Capacidade", with: @estabelecimento.capacidade
    fill_in "Cidade", with: @estabelecimento.cidade
    fill_in "Cnpj", with: @estabelecimento.cnpj
    fill_in "Descricao", with: @estabelecimento.descricao
    fill_in "Email", with: @estabelecimento.email
    fill_in "Endereco", with: @estabelecimento.endereco
    fill_in "Estado", with: @estabelecimento.estado
    fill_in "Imagem", with: @estabelecimento.imagem
    fill_in "Nome", with: @estabelecimento.nome
    fill_in "Nome proprietario", with: @estabelecimento.nome_proprietario
    fill_in "Numero", with: @estabelecimento.numero
    fill_in "Pais", with: @estabelecimento.pais
    fill_in "Senha", with: @estabelecimento.senha
    fill_in "Telefone", with: @estabelecimento.telefone
    click_on "Update Estabelecimento"

    assert_text "Estabelecimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Estabelecimento" do
    visit estabelecimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estabelecimento was successfully destroyed"
  end
end
