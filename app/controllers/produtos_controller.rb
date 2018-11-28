class ProdutosController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :edit]
  
  def index
    @produtos = Produto.paginate(page: params[:page])
  end
  
  def show
    @produto = Produto.find_by(id: params[:id])
  end
end
