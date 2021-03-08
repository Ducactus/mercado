class ClientesProdutosController < ApplicationController
  before_action :set_clientes_produto, only: %i[ show edit update destroy ]

  # GET /clientes_produtos or /clientes_produtos.json
  def index
    @clientes_produtos = ClientesProduto.all
  end

  # GET /clientes_produtos/1 or /clientes_produtos/1.json
  def show
  end

  # GET /clientes_produtos/new
  def new
    @clientes_produto = ClientesProduto.new
  end

  # GET /clientes_produtos/1/edit
  def edit
  end

  # POST /clientes_produtos or /clientes_produtos.json
  def create
    @clientes_produto = ClientesProduto.new(clientes_produto_params)

    respond_to do |format|
      if @clientes_produto.save
        format.html { redirect_to @clientes_produto, notice: "Clientes produto was successfully created." }
        format.json { render :show, status: :created, location: @clientes_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clientes_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes_produtos/1 or /clientes_produtos/1.json
  def update
    respond_to do |format|
      if @clientes_produto.update(clientes_produto_params)
        format.html { redirect_to @clientes_produto, notice: "Clientes produto was successfully updated." }
        format.json { render :show, status: :ok, location: @clientes_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clientes_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes_produtos/1 or /clientes_produtos/1.json
  def destroy
    @clientes_produto.destroy
    respond_to do |format|
      format.html { redirect_to clientes_produtos_url, notice: "Clientes produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientes_produto
      @clientes_produto = ClientesProduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clientes_produto_params
      params.require(:clientes_produto).permit(:cliente_id, :produto_id)
    end
end
