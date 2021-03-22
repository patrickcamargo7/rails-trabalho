class Personagem
  attr_accessor :nome, :idade, :raca

  def initialize(nome, idade, raca)
    @nome = nome
    @idade = idade
    @raca = raca
  end
end
