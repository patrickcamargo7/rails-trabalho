class PersonagensRepositorio
  attr_accessor :personagens

  def initialize
    @personagens = []
  end

  def adicionar(personagem)
    personagens << personagem
  end

  def pegar_todos
    personagens
  end
end
