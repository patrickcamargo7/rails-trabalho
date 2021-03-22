class ClassesRepositorio
  attr_accessor :classes

  def initialize
    @classes = []
  end

  def adicionar(classe)
    classes << classe
  end

  def pegar_todos
    classes
  end
end
