# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
  
  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
  def reserve_mail
    user = User.first
    reserva = Reserva.new(quantidade: 2, id_usuario: 1, id_produto: 1, rua: "Rua alfa", bairro: "Tijuca", cidade: "Rio de Janeiro", email_usuario: "example@example.com", estado: "RJ", numero: "700")
    produto = Produto.new(id: 2, preco: 200, nome: "Pikachu", descricao: "Este é o Pokemon mais fofinho que existe (ou não)")
    UserMailer.reserve_mail(user, reserva, produto)
  end

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def reserve_host
    user = User.first
    reserva = Reserva.new(quantidade: 2, id_usuario: 1, id_produto: 1, rua: "Rua alfa", bairro: "Tijuca", cidade: "Rio de Janeiro", email_usuario: "example@example.com", estado: "RJ", numero: "700")
    produto = Produto.new(id: 2, preco: 200, nome: "Pikachu", descricao: "Este é o Pokemon mais fofinho que existe (ou não)")
    UserMailer.reserve_host(user, reserva, produto)
  end

end
