require "application_system_test_case"

class TipoEstabelecimentosTest < ApplicationSystemTestCase
  setup do
    @tipo_estabelecimento = tipo_estabelecimentos(:one)
  end

  test "visiting the index" do
    visit tipo_estabelecimentos_url
    assert_selector "h1", text: "Tipo Estabelecimentos"
  end

  test "creating a Tipo estabelecimento" do
    visit tipo_estabelecimentos_url
    click_on "New Tipo Estabelecimento"

    fill_in "Nome tipo", with: @tipo_estabelecimento.nome_tipo
    click_on "Create Tipo estabelecimento"

    assert_text "Tipo estabelecimento was successfully created"
    click_on "Back"
  end

  test "updating a Tipo estabelecimento" do
    visit tipo_estabelecimentos_url
    click_on "Edit", match: :first

    fill_in "Nome tipo", with: @tipo_estabelecimento.nome_tipo
    click_on "Update Tipo estabelecimento"

    assert_text "Tipo estabelecimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo estabelecimento" do
    visit tipo_estabelecimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo estabelecimento was successfully destroyed"
  end
end
