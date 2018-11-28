class ProdutosController < ApplicationController
  before_action :logged_in_user, only: [:index, :show]
  
  def index
    @produtos = Produto.paginate(page: params[:page])
  end
  
  def show
    @produto = Produto.find(params[:id])
  end
end
