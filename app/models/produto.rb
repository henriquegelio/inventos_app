class Produto < ApplicationRecord
  validates(:nome, presence: true, length: { maximum: 50 })
  validates(:descricao, presence: true, length: {maximum: 255})
  validates(:preco, presence: true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 })
end
