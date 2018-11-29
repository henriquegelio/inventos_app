class ReservasController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  
  def new
    @reserva = Reserva.new
    @produto = Produto.find_by(id: params[:param1])
  end
  
  def create
    @reserva = Reserva.new(reserva_params)
    @produto = Produto.find_by(id: params[:param1])
    @user = current_user
    if @reserva.valid?
      @user.send_reserve_confirmation_email_to_buyer @user, @reserva, @produto
      @user.send_reserve_confirmation_email_to_host @user, @reserva, @produto
      flash[:info] = "Reserva criada com sucesso. Por gentileza, verifique a confirmação em seu e-mail. Em breve entraremos em contato."
      redirect_to produtos_url
    else
      flash[:danger] = "Dados preenchidos incorretamente."
      redirect_to new_reserva_path(param1: @produto.id)
    end
  end
  
  
  private
  
    def reserva_params
        params.require(:reserva).permit(:quantidade, :rua, :bairro, :cidade, :estado, :numero)
    end
end
