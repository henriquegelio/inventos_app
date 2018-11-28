class ReservasController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  
  def new
    @reserva = Reserva.new
    @produto = Produto.find_by(id: params[:param1])
  end
  
  def create
    @reserva = User.new(reserva_params)
    if @reserva.valid?
      ##@user.send_activation_email
      flash[:info] = "Reserva criada com sucesso. Por gentileza, verifique a confirmação em seu e-mail. Em breve entraremos em contato."
      redirect_to produtos_url
    else
      render 'new'
    end
  end
  
  
  private
  
    def reserva_params
        params.require(:reserva).permit(:quantidade, :rua, :bairro, :cidade, :estado, :numero)
    end
end
