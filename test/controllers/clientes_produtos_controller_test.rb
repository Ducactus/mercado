require "test_helper"

class ClientesProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clientes_produto = clientes_produtos(:one)
  end

  test "should get index" do
    get clientes_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_clientes_produto_url
    assert_response :success
  end

  test "should create clientes_produto" do
    assert_difference('ClientesProduto.count') do
      post clientes_produtos_url, params: { clientes_produto: { cliente_id: @clientes_produto.cliente_id, produto_id: @clientes_produto.produto_id } }
    end

    assert_redirected_to clientes_produto_url(ClientesProduto.last)
  end

  test "should show clientes_produto" do
    get clientes_produto_url(@clientes_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_clientes_produto_url(@clientes_produto)
    assert_response :success
  end

  test "should update clientes_produto" do
    patch clientes_produto_url(@clientes_produto), params: { clientes_produto: { cliente_id: @clientes_produto.cliente_id, produto_id: @clientes_produto.produto_id } }
    assert_redirected_to clientes_produto_url(@clientes_produto)
  end

  test "should destroy clientes_produto" do
    assert_difference('ClientesProduto.count', -1) do
      delete clientes_produto_url(@clientes_produto)
    end

    assert_redirected_to clientes_produtos_url
  end
end
