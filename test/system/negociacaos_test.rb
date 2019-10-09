require "application_system_test_case"

class NegociacaosTest < ApplicationSystemTestCase
  setup do
    @negociacao = negociacaos(:one)
  end

  test "visiting the index" do
    visit negociacaos_url
    assert_selector "h1", text: "Negociacaos"
  end

  test "creating a Negociacao" do
    visit negociacaos_url
    click_on "New Negociacao"

    fill_in "Salario combinado", with: @negociacao.salario_combinado
    fill_in "Status negociacao", with: @negociacao.status_negociacao
    click_on "Create Negociacao"

    assert_text "Negociacao was successfully created"
    click_on "Back"
  end

  test "updating a Negociacao" do
    visit negociacaos_url
    click_on "Edit", match: :first

    fill_in "Salario combinado", with: @negociacao.salario_combinado
    fill_in "Status negociacao", with: @negociacao.status_negociacao
    click_on "Update Negociacao"

    assert_text "Negociacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Negociacao" do
    visit negociacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Negociacao was successfully destroyed"
  end
end
