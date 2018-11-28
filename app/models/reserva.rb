class Reserva
  include ActiveModel::Validations
  
  attr_accessor :quantidade, :id_usuario, :id_produto, :rua, :bairro, :cidade, :email_usuario, :estado, :numero
  
  validates     :quantidade, presence: true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1 }
  validates     :rua, presence: true, length: {maximum: 100}
  validates     :bairro, presence: true, length: {maximum: 100}
  validates     :cidade, presence: true, length: {maximum: 100}
  validates     :estado, presence: true, length: {maximum: 100}
  validates     :numero, presence: true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1 }

  def initialize(attributes = {})
    @quantidade  = attributes[:quantidade]
    @id_usuario = attributes[:id_usuario]
    @id_produto  = attributes[:id_produto]
    @rua = attributes[:rua]
    @bairro  = attributes[:bairro]
    @cidade = attributes[:cidade]
    @email_usuario = attributes[:email_usuario]
    @estado  = attributes[:estado]
    @numero  = attributes[:numero]
  end
  
  def to_key
    [1]
  end

end
