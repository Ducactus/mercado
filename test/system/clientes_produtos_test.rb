require "application_system_test_case"

class ClientesProdutosTest < ApplicationSystemTestCase
  setup do
    @clientes_produto = clientes_produtos(:one)
  end

  test "visiting the index" do
    visit clientes_produtos_url
    assert_selector "h1", text: "Clientes Produtos"
  end

  test "creating a Clientes produto" do
    visit clientes_produtos_url
    click_on "New Clientes Produto"

    fill_in "Cliente", with: @clientes_produto.cliente_id
    fill_in "Produto", with: @clientes_produto.produto_id
    click_on "Create Clientes produto"

    assert_text "Clientes produto was successfully created"
    click_on "Back"
  end

  test "updating a Clientes produto" do
    visit clientes_produtos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @clientes_produto.cliente_id
    fill_in "Produto", with: @clientes_produto.produto_id
    click_on "Update Clientes produto"

    assert_text "Clientes produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Clientes produto" do
    visit clientes_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clientes produto was successfully destroyed"
  end
end
