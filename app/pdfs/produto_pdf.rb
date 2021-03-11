class ProdutoPdf < Prawn::Document
  def initialize(produto, view)
    super(top_margin: 70)
      @produto = produto
      @view = view
      nome
      line_items
    end
  
    def nome
      text "Produtos", size: 30, style: :bold

    end
    
    def line_items
      move_down 20
      table line_item_rows do
        row(0).font_style = :bold
        columns(1..3).align = :right
        self.row_colors = ["DDDDDD", "FFFFFF"]
        self.header = true
      end
    end

    def line_item_rows

      [["Nome", "descrição", "quantidade", "valor"]] +
      @produto.each.map do  |produtos|
        [produtos.nome, produtos.descricao, produtos.qtd, produtos.valor]
      end

    end
    

end

