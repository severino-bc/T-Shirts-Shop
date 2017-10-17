class ProdutosController < ApplicationController

    def index
        @produtos_por_nome = Produto.order(:nome)	
        @produtos_por_preco = Produto.order(:preco)
    end

    def create
	    valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade
	    produto = Produto.create valores
	    redirect_to root_url
	end
	
	def destroy
	    id = params[:id]
	    Produto.destroy id
	    redirect_to root_url
	end
end