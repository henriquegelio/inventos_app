# Preview all emails at http://localhost:3000/rails/mailers/reserve_mailer
class ReserveMailerPreview < ActionMailer::Preview

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
  def reserve_mail
    user = User.first
    reserva = Reserva.new(quantidade: 2, id_usuario: 1, id_produto: 1, rua: "Rua alfa", bairro: "Tijuca", cidade: "Rio de Janeiro", email_usuario: "example@example.com", estado: "RJ", numero: "700")
    ReserveMailer.reserve_mail(user, reserva)
  end

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def reserve_host
    user = User.first
    reserva = Reserva.new(quantidade: 2, id_usuario: 1, id_produto: 1, rua: "Rua alfa", bairro: "Tijuca", cidade: "Rio de Janeiro", email_usuario: "example@example.com", estado: "RJ", numero: "700")
    ReserveMailer.reserve_host(user, reserva)
  end

end
