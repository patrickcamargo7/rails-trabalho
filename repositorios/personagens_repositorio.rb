class PersonagensRepositorio
  attr_accessor :personagens

  def initialize
    @classes = []
  end

  def adicionar(personagem)
    personagens << personagem
  end

  def pegar_todos
    personagens
  end
end
