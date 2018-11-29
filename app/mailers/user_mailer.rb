class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
  
  def reserve_mail(user, reserva, produto)
    @user = user
    @reserva = reserva
    @produto = produto
    mail to: user.email, subject: "Informações sobre sua compra"
  end

  def reserve_host(user, reserva, produto)
    @user = user
    @reserva = reserva
    @produto = produto
    mail to: "henrique-azevedo@hotmail.com", subject: "Compraram nosso produto!"
  end
end