require "application_system_test_case"

class RedesTest < ApplicationSystemTestCase
  setup do
    @rede = redes(:one)
  end

  test "visiting the index" do
    visit redes_url
    assert_selector "h1", text: "Redes"
  end

  test "creating a Rede" do
    visit redes_url
    click_on "New Rede"

    fill_in "Nome rede", with: @rede.nome_rede
    click_on "Create Rede"

    assert_text "Rede was successfully created"
    click_on "Back"
  end

  test "updating a Rede" do
    visit redes_url
    click_on "Edit", match: :first

    fill_in "Nome rede", with: @rede.nome_rede
    click_on "Update Rede"

    assert_text "Rede was successfully updated"
    click_on "Back"
  end

  test "destroying a Rede" do
    visit redes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rede was successfully destroyed"
  end
end
